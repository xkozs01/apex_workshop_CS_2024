@echo off
:: Script to convert all Markdown files in subdirectories to PDF using Marp CLI

:: Ensure Marp CLI is installed
where marp >nul 2>nul
if errorlevel 1 (
    echo Marp CLI is not installed or not in PATH. Please install it using "npm install -g @marp-team/marp-cli".
    exit /b 1
)

:: Set the base directory to the current directory
set BASE_DIR=%cd%

:: Inform the user
echo Converting all Markdown files in "%BASE_DIR%" and its subdirectories to PDF...

:: Recursively find and convert all .md files
for /r "%BASE_DIR%" %%F in (*.md) do (
    echo Converting "%%F" to PDF...
    marp "%%F" --pdf --output "%%~dpnF.pdf" --allow-local-files
)

:: Completion message
echo All Markdown files have been converted to PDF.
pause