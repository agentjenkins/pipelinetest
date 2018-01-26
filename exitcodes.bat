ECHO ========== Start anaysis of NCover Data ==========
cd "%WORKSPACE%\Binaries\UnitTests"
ECHO "The ERRORLEVEL IS %ERRORLEVEL%"
SET ERRORLEVEL=3
IF %ERRORLEVEL% EQU 3 (
  ECHO "Coverage threshold not met"
  EXIT 1
)
IF %ERRORLEVEL% NEQ 0 (
  ECHO "Ncover reporting failed"
  EXIT 1
)
ECHO ========== Anaysis of NCover Data finished ==========
