@echo off
REM Change to the directory of this script
cd /d %~dp0

set PATH=%PATH%;C:\WindowsTools\pandoc-3.8.2;C:\WindowsTools\wkhtmltopdf\bin;C:\WindowsTools\Inkscape\bin;

echo Current directory: %cd%

REM This script will generate a PDF for supported language manuals (default: en and fr).
REM NOTE: Updated to build both English and French manuals and to pass absolute
REM paths for temporary file lists so the PowerShell helper can reliably find them.
REM Usage:
REM   pandoc-build-pdf.bat           -> builds both 'en' and 'fr'
REM   pandoc-build-pdf.bat en        -> builds only English
REM   pandoc-build-pdf.bat fr        -> builds only French
REM You need to have Pandoc and a PDF engine (like wkhtmltopdf) installed and in your PATH.

REM Directory of this script (absolute, ends with \)
set "SCRIPT_DIR=%~dp0"

REM If the caller provides a language argument, use it; otherwise build both en and fr
set "LANGS=%~1"
if "%LANGS%"=="" set "LANGS=en fr"

for %%L in (%LANGS%) do call :buildLang %%L

goto :eof

:buildLang
REM %1 is language code (en or fr)
echo ----------------------------------------------------
echo Building manual for language: %~1
set "MARKDOWN_DIR=D:\\Developpements\\Github\\nelson-lang\\nelson-gitbook\\markdown\\%~1"
set "OUTPUT=nelson-%~1.pdf"
set "FILELIST=%SCRIPT_DIR%all_%~1_files.txt"


if not exist "%MARKDOWN_DIR%" (
	echo WARNING: Directory not found: %MARKDOWN_DIR% - skipping %~1
	goto :eof
)

echo Generating file list for %~1 (using PowerShell Get-ChildItem)...
powershell -NoProfile -ExecutionPolicy Bypass -Command "Get-ChildItem -LiteralPath '%MARKDOWN_DIR%' -Filter '*.md' -Recurse -File -ErrorAction SilentlyContinue | Select-Object -ExpandProperty FullName" > "%FILELIST%"
echo File list created: %FILELIST%
echo Number of files:
find /c /v "" "%FILELIST%"

echo Running Pandoc via PowerShell script for %~1...
powershell -ExecutionPolicy Bypass -File build-pdf.ps1 -MarkdownDir "%MARKDOWN_DIR%" -OutputFile "%OUTPUT%" -FileListPath "%FILELIST%"

REM cleanup temporary file list
del /q "%FILELIST%"
goto :eof

REM End of script
