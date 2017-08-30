@ECHO off
TITLE Mobile Partner Optimizer

REM Source path
SET MPartnerSrc=%~dp0

REM Determine the installation path
IF %PROCESSOR_ARCHITECTURE% == AMD64 (
    SET MPartnerRoot="%ProgramFiles(x86)%\Mobile Partner\"
) ELSE (
    SET MPartnerRoot="%ProgramFiles%\Mobile Partner\"
)

REM Remove all exisiting language files
DEL /S /Q /F %MPartnerRoot%plugins\*.lang

REM Copy new configuration
XCOPY %MPartnerSrc%data\* %MPartnerRoot% /S /R /Y

CLS

REM Conclude execution status to user
IF %ERRORLEVEL% NEQ 0 (
    ECHO Error: %ERRORLEVEL%
) ELSE (
    ECHO Mobile Partner has been successfully optimized!
)

PAUSE
