@ECHO off
TITLE Mobile Partner Configuration Optimizor

REM Source path
SET MobilePartnerInstallerPath=%~dp0

REM Determines installation path
IF %PROCESSOR_ARCHITECTURE% == AMD64 (
    SET MobilePartnerRootPath="%ProgramFiles(x86)%\Mobile Partner\"
) ELSE (
    SET MobilePartnerRootPath="%ProgramFiles%\Mobile Partner\"
)

REM Remove all exisiting language files
DEL /S /Q /F %MobilePartnerRootPath%plugins\*.lang

REM Copy new configuration
XCOPY %MobilePartnerInstallerPath%data\* %MobilePartnerRootPath% /S /R /Y

CLS

REM Conclude execution status to user
IF %ERRORLEVEL% NEQ 0 (
    ECHO Error: %ERRORLEVEL%
) ELSE (
    ECHO Mobile Partner has been successfully optimized!
)

PAUSE