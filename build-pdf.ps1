# PowerShell script to generate PDF from markdown files using Pandoc
param(
    [string]$MarkdownDir,
    [string]$OutputFile,
    [string]$FileListPath
)

# Toggle: inline PNGs as data URIs (default: true). Set env NELSON_INLINE_PNG=0 to disable.
$InlinePngAsDataUri = $true
if ($env:NELSON_INLINE_PNG -ne $null) {
    if ($env:NELSON_INLINE_PNG -eq '0' -or $env:NELSON_INLINE_PNG -eq 'false') { $InlinePngAsDataUri = $false }
}

Write-Host "Reading file list from: $FileListPath"
# Resolve FileListPath to an absolute path (if relative, assume script directory)
if (-not [System.IO.Path]::IsPathRooted($FileListPath)) {
    $FileListPath = Join-Path $PSScriptRoot $FileListPath
    Write-Host "Resolved FileListPath to: $FileListPath"
}

if (-not (Test-Path $FileListPath)) {
    Write-Host "ERROR: File list not found: $FileListPath" -ForegroundColor Red
    exit 1
}

$files = Get-Content $FileListPath -ErrorAction Stop

Write-Host "Total files: $($files.Count)"

if ($files.Count -eq 0) {
    Write-Host "ERROR: File list is empty: $FileListPath" -ForegroundColor Red
    exit 1
} else {
    Write-Host "Sample file list entries (first 10):"
    $files | Select-Object -First 10 | ForEach-Object { Write-Host "  $_" }
}

    # Preserve original file order so files not in SUMMARY keep their sequence
    $originalOrderMap = @{}
    $origIdx = 0
    foreach ($f in $files) {
        try {
            $fp = [System.IO.Path]::GetFullPath($f)
        } catch {
            # If path cannot be resolved, use the literal value
            $fp = $f
        }
        if (-not $originalOrderMap.ContainsKey($fp)) { $originalOrderMap[$fp] = $origIdx; $origIdx++ }
    }

# Parse main SUMMARY.md to get the order of chapters and files
$mainSummaryPath = Join-Path $MarkdownDir "SUMMARY.md"
$summaryOrder = @{}
$orderIndex = 0

if (Test-Path $mainSummaryPath) {
    Write-Host "Parsing SUMMARY.md for file order..."
    $summaryContent = Get-Content $mainSummaryPath -Encoding UTF8
    
    foreach ($line in $summaryContent) {
        # Match markdown links: [text](path/to/file.md)
        if ($line -match '\[([^\]]+)\]\(([^\)]+\.md)\)') {
            $linkPath = $matches[2]
            # Convert relative path to absolute
            $absolutePath = Join-Path $MarkdownDir $linkPath
            $absolutePath = [System.IO.Path]::GetFullPath($absolutePath)
            
            if (Test-Path $absolutePath) {
                $summaryOrder[$absolutePath] = $orderIndex++
                Write-Host "  Order $orderIndex : $linkPath"
            }
        }
    }
    Write-Host "Found $orderIndex file references in SUMMARY.md"
}

# Sort files based on SUMMARY.md order, with fallback for files not in SUMMARY
$mainSummaryFullPath = [System.IO.Path]::GetFullPath($mainSummaryPath)
$mainReadmePath = Join-Path $MarkdownDir "README.md"
$mainReadmeFullPath = [System.IO.Path]::GetFullPath($mainReadmePath)

$sortedFiles = $files | Sort-Object {
    $fullPath = [System.IO.Path]::GetFullPath($_)
    $dir = Split-Path -Parent $fullPath
    $name = Split-Path -Leaf $fullPath

    # Priority 0: Main README.md first -> prefix 00000000
    if ($fullPath -eq $mainReadmeFullPath) { 
        return ("{0:D8}|MAIN_README" -f 0)
    }

    # Priority 1: getting_started.md second (force position regardless of SUMMARY) -> prefix 00000001
    if ($name -eq 'getting_started.md') {
        return ("{0:D8}|GETTING_STARTED" -f 1)
    }

    # Priority 2: Files listed in SUMMARY.md, in the order they appear -> start at 00000002
    if ($summaryOrder.ContainsKey($fullPath)) {
        $index = $summaryOrder[$fullPath]
        return ("{0:D8}|SUMMARY" -f (2 + $index))
    }

    # Priority 3: All other files not in SUMMARY - preserve original file-list order -> start at 01000000
    if ($name -ne 'SUMMARY.md') {
        if ($originalOrderMap.ContainsKey($fullPath)) {
            $origIndex = $originalOrderMap[$fullPath]
            return ("{0:D8}|ORIG" -f (10000000 + $origIndex))
        } else {
            return ("{0:D8}|FALLBACK|$dir|$name" -f 20000000)
        }
    }

    # Priority 4: README.md in subdirectories (place near end but before main SUMMARY)
    if ($name -eq 'README.md' -and $fullPath -ne $mainReadmeFullPath) { 
        return ("{0:D8}|README_SUB" -f 80000000)
    }

    # Priority 5 (Last): Main SUMMARY.md at the end -> prefix 99999999
    if ($fullPath -eq $mainSummaryFullPath) { 
        return ("{0:D8}|SUMMARY_LAST" -f 99999999)
    }

    # Default fallback
    return ("{0:D8}|DEFAULT" -f 99999998)
    }

# Build an anchor map: fullpath -> unique anchor id
$anchorMap = @{}
foreach ($f in $sortedFiles) {
    $full = [System.IO.Path]::GetFullPath($f)
    $rel = $full
    if ($full.StartsWith($MarkdownDir, [System.StringComparison]::OrdinalIgnoreCase)) {
        $rel = $full.Substring($MarkdownDir.Length)
    }
    $rel = $rel.TrimStart('\','/')
    # create a slug from relative path
    $slug = $rel -replace '\.md$','' -replace '[\\/]','-' -replace '[^A-Za-z0-9\-_]','-' -replace '-+','-'
    if ([string]::IsNullOrWhiteSpace($slug)) { $slug = [System.IO.Path]::GetFileNameWithoutExtension($full) }
    $slug = ('nelson-' + $slug.ToLower())
    $baseSlug = $slug
    $i = 1
    while ($anchorMap.Values -contains $slug) {
        $slug = "$baseSlug-$i"
        $i++
    }
    $anchorMap[$full] = $slug
}

# Create temporary concatenated markdown file
$tempMarkdown = "temp_combined.md"
if (Test-Path $tempMarkdown) {
    Remove-Item $tempMarkdown
}

# Create temporary directory for converted images
$convertedDir = Join-Path $env:TEMP ("nelson_pdf_images_{0}" -f (Get-Random))
if (-not (Test-Path $convertedDir)) {
    New-Item -ItemType Directory -Path $convertedDir | Out-Null
}
Write-Host "Temporary image conversion dir: $convertedDir"

# Detect SVG converter: prefer Inkscape if available, otherwise use ImageMagick (magick)
$inkscapeCmd = Get-Command inkscape -ErrorAction SilentlyContinue
$useInkscape = $false
$inkscapeNewSyntax = $false
if ($inkscapeCmd) {
    try {
        $ver = (& inkscape --version) 2>$null
        if ($ver) {
            $useInkscape = $true
            if ($ver -match 'Inkscape\s+([0-9]+)\.') {
                $major = [int]$matches[1]
                if ($major -ge 1) { $inkscapeNewSyntax = $true }
            } else {
                # If version parsing fails, assume new syntax (safe for recent installs)
                $inkscapeNewSyntax = $true
            }
        }
    } catch {
        $useInkscape = $true
        $inkscapeNewSyntax = $true
    }
}
if ($useInkscape) {
    Write-Host "Using Inkscape for SVG->PNG conversion. New syntax: $inkscapeNewSyntax"
} else {
    Write-Host "Inkscape not found; will use ImageMagick (magick) for SVG->PNG conversion"
}

# Detect preferred PDF engine: prefer wkhtmltopdf, fall back to weasyprint if available
$pdfEngine = $null
"# PDF engine detection"
# Allow explicit override via environment variable WKHTMLTOPDF_PATH
$wkPathFromEnv = $env:WKHTMLTOPDF_PATH
$wkCandidates = @()
if ($wkPathFromEnv) { $wkCandidates += $wkPathFromEnv }
# common install locations
$wkCandidates += 'C:\Program Files\wkhtmltopdf\bin\wkhtmltopdf.exe'
$wkCandidates += 'C:\Program Files (x86)\wkhtmltopdf\bin\wkhtmltopdf.exe'
$wkCandidates += 'C:\WindowsTools\wkhtmltox\bin\wkhtmltopdf.exe'

$wkhtmlPath = $null
foreach ($c in $wkCandidates) {
    if (Test-Path $c) { $wkhtmlPath = $c; break }
}

if (-not $wkhtmlPath) {
    # Try PATH
    $cmd = Get-Command wkhtmltopdf -ErrorAction SilentlyContinue
    if ($cmd) { $wkhtmlPath = $cmd.Source }
}

if ($wkhtmlPath) {
    $pdfEngine = 'wkhtmltopdf'
    Write-Host "Using wkhtmltopdf as pdf-engine: $wkhtmlPath" -ForegroundColor Cyan
} elseif (Get-Command weasyprint -ErrorAction SilentlyContinue) {
    $pdfEngine = 'weasyprint'
    Write-Host "wkhtmltopdf not found; using weasyprint as pdf-engine." -ForegroundColor Cyan
} else {
    Write-Host "ERROR: No supported PDF engine found. Please install wkhtmltopdf (recommended) or weasyprint and ensure it's in PATH." -ForegroundColor Red
    Write-Host "  - wkhtmltopdf (Windows): https://wkhtmltopdf.org/downloads.html" -ForegroundColor Yellow
    Write-Host "  - or install via Chocolatey: choco install wkhtmltopdf -y (requires Chocolatey)" -ForegroundColor Yellow
    Write-Host "  - weasyprint (requires Python + cairo/pango): pip install weasyprint (see https://weasyprint.org/docs/install/)" -ForegroundColor Yellow
    exit 1
}

# ---------------------------
# Initialize conversion counter
$global:ConvertedCount = 0

# New helper: check command exists with suggestion
function Test-CommandExists {
    param([string]$cmd)
    $found = Get-Command $cmd -ErrorAction SilentlyContinue
    if (-not $found) {
        Write-Host "Warning: '$cmd' not found on PATH." -ForegroundColor Yellow
        return $false
    }
    return $true
}

# New helper: centralized SVG -> PNG conversion (returns full png path or $null)
function Convert-SvgToPng {
    param(
        [string]$svgRef,
        [string]$fileDir,
        [string]$convertedDir,
        [bool]$useInkscape,
        [bool]$inkscapeNewSyntax
    )

    # Resolve svg local path (like previous logic), remove querystring for filename
    $svgLocal = $svgRef
    if ($svgLocal -match '^file:///') {
        $svgLocal = $svgLocal -replace '^file:///', ''
        $svgLocal = $svgLocal -replace '/', '\'
    } elseif ($svgLocal -notmatch '^(?:https?:)?//' -and $svgLocal -notmatch '^[A-Za-z]:\\') {
        $svgLocal = Join-Path $fileDir $svgLocal
    }

    # Strip any URI query or fragment for filename/hash purposes
    $svgLocalNoQuery = $svgLocal -replace '\?.*$',''

    if (-not (Test-Path $svgLocalNoQuery)) {
        Write-Host "Warning: SVG file not found, skipping conversion: $svgLocalNoQuery" -ForegroundColor Yellow
        return $null
    }

    $baseName = [System.IO.Path]::GetFileNameWithoutExtension($svgLocalNoQuery)
    $hash = [System.BitConverter]::ToString((New-Object System.Security.Cryptography.MD5CryptoServiceProvider).ComputeHash([System.Text.Encoding]::UTF8.GetBytes($svgLocalNoQuery))).Replace('-','').ToLower().Substring(0,8)
    $pngPath = Join-Path $convertedDir ("$baseName-$hash.png")

    if (Test-Path $pngPath) {
        return $pngPath
    }

    try {
        if ($useInkscape) {
            # prefer Inkscape
            if ($inkscapeNewSyntax) {
                $args = @("$svgLocalNoQuery", "--export-filename=$pngPath")
            } else {
                $args = @("--export-png=$pngPath", $svgLocalNoQuery)
            }
            Write-Host "Running inkscape $($args -join ' ')" -ForegroundColor Cyan
            $p = Start-Process -FilePath "inkscape" -ArgumentList $args -NoNewWindow -Wait -PassThru -ErrorAction Stop
            if ($p.ExitCode -ne 0) { throw "Inkscape exit $($p.ExitCode)" }
        } else {
            # fallback to ImageMagick (magick)
            $args = @($svgLocalNoQuery, '-background', 'white', '-flatten', '-resize', '1200x', $pngPath)
            Write-Host "Running magick $($args -join ' ')" -ForegroundColor Cyan
            $p = Start-Process -FilePath "magick" -ArgumentList $args -NoNewWindow -Wait -PassThru -ErrorAction Stop
            if ($p.ExitCode -ne 0) { throw "magick exit $($p.ExitCode)" }
        }

        if (Test-Path $pngPath) {
            return $pngPath
        } else {
            Write-Host "Conversion did not produce expected file: $pngPath" -ForegroundColor Yellow
            return $null
        }
    } catch {
        Write-Host "Error converting SVG: $_" -ForegroundColor Red
        return $null
    }
}
# ---------------------------

foreach ($file in $sortedFiles) {
    Write-Host "Processing: $file"
    
    # Get the directory of the current markdown file
    $fileDir = Split-Path -Parent $file
    
    # Read content and fix relative image paths
    $content = Get-Content $file -Raw -Encoding UTF8

    # Inject per-file named anchor so internal links can target it (anchor id is stable)
    # Use an <a> with both id and name attributes: wkhtmltopdf historically
    # handles named anchors better than empty <div> elements.
    $fullPathForAnchor = [System.IO.Path]::GetFullPath($file)
    if ($anchorMap.ContainsKey($fullPathForAnchor)) {
        $anchorId = $anchorMap[$fullPathForAnchor]
        # Insert a named anchor at the top of the file content. Keep it empty
        # and separated by a couple of newlines to avoid interfering with
        # first heading layout.
        $content = "<a id='$anchorId' name='$anchorId'></a>`n`n" + $content
    }
    
    # Remove HTML-only elements (JavaScript, CSS) that are not needed for PDF
    $content = $content -replace '<link\s+rel="stylesheet"[^>]*>', ''
    $content = $content -replace '<script[^>]*>.*?</script>', ''
    
    # Convert emojis to inline images using Twemoji CDN since wkhtmltopdf doesn't render Unicode emojis properly
    # This ensures headings like "## 📄 Description" display correctly in the PDF with actual emoji images
    # Build emoji strings from UTF-32 code points since PowerShell's [char] only supports 16-bit
    $emojiMap = @{
        '1f4dd' = @{ char = [System.Text.Encoding]::UTF32.GetString([System.BitConverter]::GetBytes(0x1F4DD)); desc = 'memo' }
        '1f4e5' = @{ char = [System.Text.Encoding]::UTF32.GetString([System.BitConverter]::GetBytes(0x1F4E5)); desc = 'inbox' }
        '1f4e4' = @{ char = [System.Text.Encoding]::UTF32.GetString([System.BitConverter]::GetBytes(0x1F4E4)); desc = 'outbox' }
        '1f4c4' = @{ char = [System.Text.Encoding]::UTF32.GetString([System.BitConverter]::GetBytes(0x1F4C4)); desc = 'page' }
        '1f4a1' = @{ char = [System.Text.Encoding]::UTF32.GetString([System.BitConverter]::GetBytes(0x1F4A1)); desc = 'bulb' }
        '1f517' = @{ char = [System.Text.Encoding]::UTF32.GetString([System.BitConverter]::GetBytes(0x1F517)); desc = 'link' }
        '1f554' = @{ char = [System.Text.Encoding]::UTF32.GetString([System.BitConverter]::GetBytes(0x1F554)); desc = 'clock' }
        '1f464' = @{ char = [System.Text.Encoding]::UTF32.GetString([System.BitConverter]::GetBytes(0x1F464)); desc = 'user' }
        '26a0'  = @{ char = [System.Text.Encoding]::UTF32.GetString([System.BitConverter]::GetBytes(0x26A0)); desc = 'warning' }
        '2705'  = @{ char = [System.Text.Encoding]::UTF32.GetString([System.BitConverter]::GetBytes(0x2705)); desc = 'check' }
        '274c'  = @{ char = [System.Text.Encoding]::UTF32.GetString([System.BitConverter]::GetBytes(0x274C)); desc = 'cross' }
    }
    
    # Replace each emoji with an inline image using Twemoji CDN
    # The images are sized to match text (0.9em) and aligned with baseline for proper inline display
    # We add a data-emoji attribute to identify these as inline emojis (not content images)
    foreach ($codepoint in $emojiMap.Keys) {
        $emojiChar = $emojiMap[$codepoint].char
        $emojiDesc = $emojiMap[$codepoint].desc
        $imgTag = "<img data-emoji='true' src='https://cdn.jsdelivr.net/gh/twitter/twemoji@latest/assets/72x72/$codepoint.png' alt='$emojiDesc' style='display: inline-block; width: 0.9em; height: 0.9em; vertical-align: -0.1em; margin: 0 0.05em;'>"
        $content = $content.Replace($emojiChar, $imgTag)
    }
    
    # Remove ## Author and ## Auteur sections (heading and content until next heading or end)
    $content = $content -replace '(?ms)^##\s+(Author|Auteur)\s*$.*?(?=^##\s|\z)', ''
    
    # Remove inline width/height attributes from img tags to let CSS control sizing
    $content = [regex]::Replace($content, '<img([^>]*)\s+width="[^"]*"', '<img$1')
    $content = [regex]::Replace($content, '<img([^>]*)\s+height="[^"]*"', '<img$1')
    $content = $content -replace '\s+align="[^"]*"', ''
    
    # Convert internal links to .md files into file:/// links so they are clickable in PDF
    # Only match links that end with .md and don't start with http
    $content = [regex]::Replace($content, '\[([^\]]+)\]\((?!http)([^\)]+)\.md\)', {
        param($m)
        $linkText = $m.Groups[1].Value
        $linkPath = $m.Groups[2].Value
        # Skip if link text contains $ (likely math)
        if ($linkText -match '\$') { return $m.Value }

        # Resolve relative paths against the current file directory
        $resolved = $linkPath
        if ($resolved -notmatch '^(?:[A-Za-z]:\\|/|file:///|//)') {
            $resolved = Join-Path $fileDir $resolved
        }
        # Ensure .md extension and get full path
        $resolvedFull = [System.IO.Path]::GetFullPath($resolved + ".md")

        # If target file is in our anchor map, rewrite to internal anchor link
        if ($anchorMap.ContainsKey($resolvedFull)) {
            $anchor = $anchorMap[$resolvedFull]
            return "[$linkText](#$anchor)"
        }

        # Otherwise, convert to file:/// URI (use forward slashes)
        $uri = "file:///" + $resolvedFull.Replace('\\', '/')
        "[$linkText]($uri)"
    })
    
    # Convert Windows paths to file:// URIs
    $fileDirUri = "file:///" + $fileDir.Replace('\', '/')
    
    # Remove inline style attributes from img tags (let CSS handle it)
    $content = $content -replace '<img([^>]*)\s+style="[^"]*"', '<img$1'
    
    # Replace relative markdown image paths with absolute file:// URIs (skip http, absolute/root paths and file URIs)
    $content = $content -replace '!\[([^\]]*)\]\((?!http|/|file:|//)([^)]+)\)', { param($m) 
        $raw = ($fileDirUri + '/' + $m.Groups[2].Value)
        $norm = $raw.Replace('\\','/')
        return "![$($m.Groups[1].Value)]($norm)"
    }

    # Rewrite relative HTML <img> tags to use absolute file:// URIs for src.
    # We replace the src attribute inside the whole tag, preserving other attributes
    # and the closing of the tag (so attributes that come after src are preserved).
    $content = [regex]::Replace($content, '<img\b[^>]*>', {
        param($m)
        $tag = $m.Value
        # Match src attribute either as "..." or '...'
        $mr = [regex]::Match($tag, 'src\s*=\s*(?:"([^"]+)"|''([^'']+)'')')
        if (-not $mr.Success) { return $tag }
        # Capture value from either group 1 (double-quoted) or group 2 (single-quoted)
        $srcVal = if ($mr.Groups[1].Value -ne '') { $mr.Groups[1].Value } else { $mr.Groups[2].Value }

        # Skip rewriting if src is already absolute (http(s), root, file:, or network) or a Windows absolute path (C:\...)
        if ($srcVal -match '^(?:https?:|/|file:|//)') { return $tag }
        if ($srcVal.Length -ge 3 -and $srcVal[1] -eq ':' -and $srcVal[2] -eq '\\') { return $tag }

        # Build new file:/// URI using fileDirUri and the relative src, normalize slashes
        $newSrc = ($fileDirUri + '/' + $srcVal).Replace('\\','/')
        # Replace the src attribute value while keeping the rest of the tag intact
        $newTag = [regex]::Replace($tag, 'src\s*=\s*(?:"([^"]+)"|''([^'']+)'')', 'src="' + $newSrc + '"')
        return $newTag
    })
    
    # NOW convert SVG images to PNG and update references (after paths are fixed)
    # Collect unique SVG references (markdown-style and HTML <img>)
    $svgCandidates = @()
    $mdSvgMatches = [regex]::Matches($content, '!\[[^\]]*\]\(([^)]+?\.svg(?:\?[^)]*)?)\)', 'IgnoreCase')
    foreach ($m in $mdSvgMatches) { $svgCandidates += $m.Groups[1].Value }
    $imgSvgMatches = [regex]::Matches($content, '<img[^>]*src="([^"]+?\.svg(?:\?[^"]*)?)"[^>]*>', 'IgnoreCase')
    foreach ($m in $imgSvgMatches) { $svgCandidates += $m.Groups[1].Value }
    $svgCandidates = $svgCandidates | Select-Object -Unique

    foreach ($svgRef in $svgCandidates) {
        $pngPath = Convert-SvgToPng -svgRef $svgRef -fileDir $fileDir -convertedDir $convertedDir -useInkscape $useInkscape -inkscapeNewSyntax $inkscapeNewSyntax
        if ($pngPath) {
            $pngUri = 'file:///' + $pngPath.Replace('\','/')
            $content = $content.Replace($svgRef, $pngUri)
            $global:ConvertedCount = ($global:ConvertedCount + 1) -as [int]
            Write-Host "Replaced SVG reference with PNG: $svgRef -> $pngUri"
        } else {
            Write-Host "Skipped conversion for: $svgRef"
        }
    }

    # NOW copy local PNG images into converted dir and update references to file:/// URIs
    # This mirrors the SVG conversion approach so PNGs are reliably accessible by wkhtmltopdf
    $pngCandidates = @()
    $mdPngMatches = [regex]::Matches($content, '!\[[^\]]*\]\(([^)]+?\.png(?:\?[^)]*)?)\)', 'IgnoreCase')
    foreach ($m in $mdPngMatches) { $pngCandidates += $m.Groups[1].Value }
    $imgPngMatches = [regex]::Matches($content, '<img[^>]*src="([^"]+?\.png(?:\?[^\"]*)?)"[^>]*>', 'IgnoreCase')
    foreach ($m in $imgPngMatches) { $pngCandidates += $m.Groups[1].Value }
    $pngCandidates = $pngCandidates | Select-Object -Unique

    foreach ($pngRef in $pngCandidates) {
        $pngLocal = $pngRef
        if ($pngLocal -match '^file:///') {
            $pngLocal = $pngLocal -replace '^file:///', ''
            $pngLocal = $pngLocal -replace '/', '\\'
        } elseif ($pngLocal -notmatch '^(?:https?:)?//' -and $pngLocal -notmatch '^[A-Za-z]:\\') {
            $pngLocal = Join-Path $fileDir $pngLocal
        }

        $pngLocalNoQuery = $pngLocal -replace '\?.*$',''
        if (-not (Test-Path $pngLocalNoQuery)) {
            Write-Host "Warning: PNG file not found, skipping copy: $pngLocalNoQuery" -ForegroundColor Yellow
            continue
        }

        $baseName = [System.IO.Path]::GetFileNameWithoutExtension($pngLocalNoQuery)
        $hash = [System.BitConverter]::ToString((New-Object System.Security.Cryptography.MD5CryptoServiceProvider).ComputeHash([System.Text.Encoding]::UTF8.GetBytes($pngLocalNoQuery))).Replace('-','').ToLower().Substring(0,8)
        $destPath = Join-Path $convertedDir ("$baseName-$hash.png")

        if (-not (Test-Path $destPath)) {
            try {
                Copy-Item -Path $pngLocalNoQuery -Destination $destPath -Force -ErrorAction Stop
            } catch {
                Write-Host "Error copying PNG file: $_" -ForegroundColor Yellow
                continue
            }
        }

        # Inline the copied PNG as a base64 data URI so wkhtmltopdf doesn't need to load file:/// paths.
        try {
            $bytes = [System.IO.File]::ReadAllBytes($destPath)
            $b64 = [System.Convert]::ToBase64String($bytes)
            $dataUri = 'data:image/png;base64,' + $b64
            $content = $content.Replace($pngRef, $dataUri)
            $global:ConvertedCount = ($global:ConvertedCount + 1) -as [int]
            Write-Host "Inlined PNG as data URI: $pngRef -> [data:image/png;base64,...]"
        } catch {
            Write-Host "Error inlining PNG file: $_" -ForegroundColor Yellow
            # Fallback: use file:/// reference if inlining fails
            $pngUri = 'file:///' + $destPath.Replace('\\','/')
            $content = $content.Replace($pngRef, $pngUri)
            Write-Host "Fell back to file URI for PNG: $pngRef -> $pngUri"
        }
    }

    # NOW wrap PNG images (generated from SVG) in constrained container
    # Wrap markdown-style PNG images (previously SVG) - EXCEPT Twemoji emojis
    $content = [regex]::Replace($content, '!\[([^\]]*)\]\(([^)]*\.png[^)]*)\)', {
        param($m)
        $altText = $m.Groups[1].Value
        $pngPathInner = $m.Groups[2].Value
        # Don't wrap Twemoji emoji images - they should stay inline
        if ($pngPathInner -like '*twemoji*' -or $pngPathInner -like '*cdn.jsdelivr.net*') {
            return $m.Value
        }
        '<div style="width: 100%; max-width: 550px; margin: 10px auto; overflow: hidden !important; text-align: center;"><img src="' + $pngPathInner + '" alt="' + $altText + '" style="max-width: 80%; max-height: 280px; height: auto; display: block; margin: 0 auto; overflow: hidden;"></div>'
    })

    # Wrap HTML PNG images in constrained container - EXCEPT Twemoji emojis
    $content = [regex]::Replace($content, '<img\b[^>]*src=[''"][^''"]*\.png(?:\?[^''"]*)?\s*[''"][^>]*>', {
        param($m)
        $fullTag = $m.Value
        
        # Don't wrap emoji images - check for data-emoji attribute
        if ($fullTag -match 'data-emoji\s*=') {
            return $fullTag
        }
        
        # Extract src (handles double or single quotes)
        $srcMatch = [regex]::Match($fullTag, 'src\s*=\s*(?:"([^"]+)"|''([^'']+)'')')
        if (-not $srcMatch.Success) { return $fullTag }
        $srcVal = if ($srcMatch.Groups[1].Value -ne '') { $srcMatch.Groups[1].Value } else { $srcMatch.Groups[2].Value }

        # Don't wrap Twemoji emoji images - they should stay inline
        if ($srcVal -like '*twemoji*' -or $srcVal -like '*cdn.jsdelivr.net*') {
            return $fullTag
        }

        # Normalize src: if it's a file:/// path, convert backslashes to forward slashes
        if ($srcVal -like 'file:///*') {
            # remove any leading file:/// then rebuild with forward slashes
            $after = $srcVal -replace '^file:///', ''
            $after = $after.Replace('\\','/')
            $normalizedSrc = 'file:///' + $after
        } elseif ($srcVal -like 'data:*') {
            $normalizedSrc = $srcVal
        } else {
            # relative or other: normalize backslashes
            $normalizedSrc = $srcVal.Replace('\\','/')
        }

        # Extract alt attribute if present
        $altMatch = [regex]::Match($fullTag, 'alt\s*=\s*(?:"([^"]*)"|''([^'']*)'')')
        $altVal = ''
        if ($altMatch.Success) { $altVal = if ($altMatch.Groups[1].Value -ne '') { $altMatch.Groups[1].Value } else { $altMatch.Groups[2].Value } }

        # Rebuild a clean <img> tag with the normalized src and a controlled style
        $rebuilt = '<div style="width: 100%; max-width: 550px; margin: 10px auto; overflow: hidden !important; text-align: center;"><img src="' + $normalizedSrc + '"'
        if ($altVal -ne '') { $rebuilt += ' alt="' + $altVal + '"' }
    $rebuilt += ' style="max-width: 80%; max-height: 280px; height: auto; display: block; margin: 0 auto; overflow: hidden;"></div>'
    return $rebuilt
    })

    # Append to combined file
    # Convert markdown internal anchor links to explicit HTML anchors to help wkhtmltopdf
    $content = [regex]::Replace($content, '\[([^\]]+)\]\(#([A-Za-z0-9\-_:]+)\)', { param($m) "<a href='#" + $m.Groups[2].Value + "'>" + $m.Groups[1].Value + "</a>" })

    $content | Out-File -Append -Encoding UTF8 -NoNewline $tempMarkdown
    # Add page break for wkhtmltopdf (HTML/CSS style)
    "`n`n<div style='page-break-after: always;'></div>`n`n" | Out-File -Append -Encoding UTF8 $tempMarkdown
}

Write-Host "Running Pandoc on combined markdown..."

# (Debug output removed)

# Build resource path - include markdown dir and all subdirectories
$resourcePaths = @($MarkdownDir)
Get-ChildItem -Path $MarkdownDir -Directory -Recurse | ForEach-Object {
    $resourcePaths += $_.FullName
}
$resourcePathString = $resourcePaths -join ";"

Write-Host "Resource paths configured: $($resourcePaths.Count) directories"

# Run Pandoc with the combined file and custom CSS
try {
    # Use an argument array and select engine-specific options based on detection
    $pandocArgs = @()
    $pandocArgs += "--resource-path=$resourcePathString"

    if ($pdfEngine -eq 'wkhtmltopdf') {
        # Use absolute path to wkhtmltopdf if available (PowerShell 5.1 compatible)
        if ($wkhtmlPath -and $wkhtmlPath -ne '') {
            $engineArg = $wkhtmlPath
        } else {
            $engineArg = 'wkhtmltopdf'
        }
        $pandocArgs += "--pdf-engine=$engineArg"
        # wkhtmltopdf-specific engine options
        $pandocArgs += "--pdf-engine-opt=--enable-local-file-access"
        $pandocArgs += "--pdf-engine-opt=--javascript-delay"
        $pandocArgs += "--pdf-engine-opt=100"
        $pandocArgs += "--pdf-engine-opt=--no-stop-slow-scripts"
        $pandocArgs += "--pdf-engine-opt=--disable-smart-shrinking"
        $pandocArgs += "--pdf-engine-opt=--zoom"
        $pandocArgs += "--pdf-engine-opt=0.95"
        # Reserve consistent space (same units) for all margins to avoid wkhtmltopdf error
        $pandocArgs += "--pdf-engine-opt=--margin-top"
        $pandocArgs += "--pdf-engine-opt=15mm"
        $pandocArgs += "--pdf-engine-opt=--margin-bottom"
        $pandocArgs += "--pdf-engine-opt=15mm"
        $pandocArgs += "--pdf-engine-opt=--margin-left"
        $pandocArgs += "--pdf-engine-opt=15mm"
        $pandocArgs += "--pdf-engine-opt=--margin-right"
        $pandocArgs += "--pdf-engine-opt=15mm"
        # Footer showing current page and total pages
        $pandocArgs += "--pdf-engine-opt=--footer-center"
        $pandocArgs += "--pdf-engine-opt=Page [page] of [toPage]"
        $pandocArgs += "--pdf-engine-opt=--footer-font-size"
        $pandocArgs += "--pdf-engine-opt=9"
    } else {
        # weasyprint or other engines: use their engine name and avoid wkhtmltopdf-only flags
        $pandocArgs += "--pdf-engine=$pdfEngine"
    }

    # Common options
    # Set a fixed document title so browser/pdf window title isn't derived from the temp filename
    $pandocArgs += "--metadata=title:Nelson documentation"
    # Enable emoji support so markdown emojis render correctly instead of as square characters
    $pandocArgs += "--from=markdown+emoji"
    $pandocArgs += "--css=pdf-style-v2.css"
    $pandocArgs += "--webtex"
    $pandocArgs += "--syntax-highlighting=pygments"
    $pandocArgs += $tempMarkdown
    $pandocArgs += "-o"
    $pandocArgs += $OutputFile

    if (-not (Test-Path $tempMarkdown)) {
        Write-Host "ERROR: Combined markdown file not found: $tempMarkdown" -ForegroundColor Red
        if (Test-Path $convertedDir) { Remove-Item $convertedDir -Recurse -Force -ErrorAction SilentlyContinue }
        exit 1
    }

    & pandoc @pandocArgs

    # Clean up temporary file
    Remove-Item $tempMarkdown -ErrorAction SilentlyContinue

    # Clean up converted images dir
    if (Test-Path $convertedDir) {
        Remove-Item $convertedDir -Recurse -Force -ErrorAction SilentlyContinue
    }
    
    if (Test-Path $OutputFile) {
        Write-Host "SUCCESS: PDF generated: $OutputFile" -ForegroundColor Green
        exit 0
    } else {
        Write-Host "ERROR: PDF file was not created" -ForegroundColor Red
        exit 1
    }
} catch {
    Write-Host "ERROR: Pandoc execution failed: $_" -ForegroundColor Red
    if (Test-Path $tempMarkdown) {
        Remove-Item $tempMarkdown
    }
    # Clean up converted images dir on error too
    if (Test-Path $convertedDir) {
        Remove-Item $convertedDir -Recurse -Force
    }
    exit 1
}

# ---------------------------
# New helper: check command exists with suggestion
function Test-CommandExists {
    param([string]$cmd)
    $found = Get-Command $cmd -ErrorAction SilentlyContinue
    if (-not $found) {
        Write-Host "Warning: '$cmd' not found on PATH." -ForegroundColor Yellow
        return $false
    }
    return $true
}

# New helper: centralized SVG -> PNG conversion (returns full png path or $null)
function Convert-SvgToPng {
    param(
        [string]$svgRef,
        [string]$fileDir,
        [string]$convertedDir,
        [bool]$useInkscape,
        [bool]$inkscapeNewSyntax
    )

    # Resolve svg local path (like previous logic), remove querystring for filename
    $svgLocal = $svgRef
    if ($svgLocal -match '^file:///') {
        $svgLocal = $svgLocal -replace '^file:///', ''
        $svgLocal = $svgLocal -replace '/', '\'
    } elseif ($svgLocal -notmatch '^(?:https?:)?//' -and $svgLocal -notmatch '^[A-Za-z]:\\') {
        $svgLocal = Join-Path $fileDir $svgLocal
    }

    # Strip any URI query or fragment for filename/hash purposes
    $svgLocalNoQuery = $svgLocal -replace '\?.*$',''

    if (-not (Test-Path $svgLocalNoQuery)) {
        Write-Host "Warning: SVG file not found, skipping conversion: $svgLocalNoQuery" -ForegroundColor Yellow
        return $null
    }

    $baseName = [System.IO.Path]::GetFileNameWithoutExtension($svgLocalNoQuery)
    $hash = [System.BitConverter]::ToString((New-Object System.Security.Cryptography.MD5CryptoServiceProvider).ComputeHash([System.Text.Encoding]::UTF8.GetBytes($svgLocalNoQuery))).Replace('-','').ToLower().Substring(0,8)
    $pngPath = Join-Path $convertedDir ("$baseName-$hash.png")

    if (Test-Path $pngPath) {
        return $pngPath
    }

    try {
        if ($useInkscape) {
            # prefer Inkscape
            if ($inkscapeNewSyntax) {
                $args = @("$svgLocalNoQuery", "--export-filename=$pngPath")
            } else {
                $args = @("--export-png=$pngPath", $svgLocalNoQuery)
            }
            Write-Host "Running inkscape $($args -join ' ')" -ForegroundColor Cyan
            $p = Start-Process -FilePath "inkscape" -ArgumentList $args -NoNewWindow -Wait -PassThru -ErrorAction Stop
            if ($p.ExitCode -ne 0) { throw "Inkscape exit $($p.ExitCode)" }
        } else {
            # fallback to ImageMagick (magick)
            $args = @($svgLocalNoQuery, '-background', 'white', '-flatten', '-resize', '1200x', $pngPath)
            Write-Host "Running magick $($args -join ' ')" -ForegroundColor Cyan
            $p = Start-Process -FilePath "magick" -ArgumentList $args -NoNewWindow -Wait -PassThru -ErrorAction Stop
            if ($p.ExitCode -ne 0) { throw "magick exit $($p.ExitCode)" }
        }

        if (Test-Path $pngPath) {
            return $pngPath
        } else {
            Write-Host "Conversion did not produce expected file: $pngPath" -ForegroundColor Yellow
            return $null
        }
    } catch {
        Write-Host "Error converting SVG: $_" -ForegroundColor Red
        return $null
    }
}
# ---------------------------