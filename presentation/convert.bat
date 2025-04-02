@echo off
:: Root convert.bat in c:\Users\serge\GitHub.com\apex_workshop_CS_2024\presentation\
echo Starting conversion in all subdirectories...

:: Loop through all subdirectories
for /d %%D in (*) do (
    if exist "%%D\convert.bat" (
        echo Running convert.bat in %%D...
        call "%%D\convert.bat"
    ) else (
        echo No convert.bat found in %%D, skipping...
    )
)

echo Conversion completed.
pause