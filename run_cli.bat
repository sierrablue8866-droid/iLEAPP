@echo off
cd /d "%~dp0"

if not exist "..\ALEAPP\.venv\Scripts\python.exe" (
    echo [ERROR] Shared virtual environment not found at ..\ALEAPP\.venv\Scripts\python.exe
    pause
    exit /b 1
)

..\ALEAPP\.venv\Scripts\python.exe ileapp.py %*
