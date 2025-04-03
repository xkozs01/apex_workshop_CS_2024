@echo off
:: Script to convert all Markdown files in subdirectories to PDF using Pandoc

:: Ensure Pandoc is installed
where pandoc >nul 2>nul
if errorlevel 1 (
    echo Pandoc is not installed or not in PATH. Please install it from https://pandoc.org/installing.html.
    exit /b 1
)

:: Set the base directory to the current directory
set BASE_DIR=%cd%

:: Inform the user
echo Converting all Markdown files in "%BASE_DIR%" and its subdirectories to PDF...

:: Recursively find and convert all .md files
for /r "%BASE_DIR%" %%F in (*.md) do (
    echo Converting "%%F" to PDF...
    pandoc "%%F" -o "%%~dpnF.pdf"
)

:: Completion message
echo All Markdown files have been converted to PDF.
pause