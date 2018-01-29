ECHO ========== Start anaysis of NCover Data ==========
ECHO OFF
cd "%WORKSPACE%\Binaries\UnitTests"
ECHO "The ERRORLEVEL IS %ERRORLEVEL%"
SET ERRORLEVEL=3
IF %ERRORLEVEL% EQU 3 (
  ECHO "Coverage threshold not met"
) ELSE IF %ERRORLEVEL% NEQ 0 (
  ECHO "Ncover reporting failed"
)
ECHO ========== Anaysis of NCover Data finished ==========
EXIT %ERRORLEVEL%
