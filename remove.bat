@echo off

set "default_directory=C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp"

IF NOT EXIST "%default_directory%" (
    msg * "Warning: The default directory "%default_directory%" does not exist."
    exit
)

echo tskill explorer > "%default_directory%\removal.bat"

echo explorer.exe shell:::{3080F90D-D7AD-11D9-BD98-0000947B0257} >> "%default_directory%\removal.bat"

msg * "The watermark removal script has been created and set to run at startup. Please restart your computer to apply the changes."

