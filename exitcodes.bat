ECHO OFF
ECHO ========== Start anaysis of NCover Data ==========
cd "%WORKSPACE%\Binaries\UnitTests"
"C:\Program Files (x86)\NCover\NCover.Reporting.exe" //cr "%WORKSPACE%\Build\DDM.build.Verification.NCoverReporting.config"
IF %ERRORLEVEL% EQ 3 (
  ECHO "Coverage threshold not met"
) ELSE IF %ERRORLEVEL% NEQ 0 (
  ECHO "Ncover reporting failed"
)
ECHO ========== Anaysis of NCover Data finished ==========
EXIT %ERRORLEVEL%
