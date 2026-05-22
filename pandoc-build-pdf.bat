@echo off
REM Change to the directory of this script
cd /d %~dp0

REM Tools should already be in PATH via Chocolatey, but add common locations as backup
set PATH=%PATH%;C:\WindowsTools\pandoc;C:\WindowsTools\wkhtmltopdf\bin;C:\WindowsTools\Inkscape\bin;C:\ProgramData\chocolatey\lib\pandoc\tools;C:\ProgramData\chocolatey\lib\wkhtmltopdf\tools\bin;

echo Current directory: %cd%

REM This script will generate a PDF for supported language manuals (default: en and fr).
REM The Rust builder handles language iteration and markdown file discovery.
REM Usage:
REM   pandoc-build-pdf.bat           -> builds both 'en' and 'fr'
REM   pandoc-build-pdf.bat en        -> builds only English
REM   pandoc-build-pdf.bat fr        -> builds only French
REM You need to have Pandoc and a PDF engine (like wkhtmltopdf) installed and in your PATH.

REM Directory of this script (absolute, ends with \)
set "SCRIPT_DIR=%~dp0"

REM If the caller provides a language argument, use it; otherwise build both en and fr
set "LANGS=%~1"
if "%LANGS%"=="" set "LANGS=en,fr"

echo Building Rust PDF builder...
cargo build --release
if errorlevel 1 (
	echo ERROR: Rust PDF builder compilation failed
	exit /b 1
)
set "PDF_BUILDER=%SCRIPT_DIR%target\release\nelson-pdf-builder.exe"

"%PDF_BUILDER%" --languages "%LANGS%"
if errorlevel 1 (
	echo ERROR: Rust PDF builder failed
	exit /b 1
)

goto :eof

REM End of script
