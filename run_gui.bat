@echo off
cd /d "%~dp0"
echo ===================================================
echo Starting iLEAPP (iOS Logs, Events, ^& Plists Parser)
echo ===================================================

if not exist "..\ALEAPP\.venv\Scripts\python.exe" (
    echo [ERROR] Shared virtual environment not found at ..\ALEAPP\.venv\Scripts\python.exe
    pause
    exit /b 1
)

..\ALEAPP\.venv\Scripts\python.exe ileappGUI.py
if %ERRORLEVEL% NEQ 0 (
    echo.
    echo [ERROR] iLEAPP GUI exited with error code %ERRORLEVEL%.
    pause
)
