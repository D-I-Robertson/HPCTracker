@echo off
title Hobby Progress Challenge tracker
cd /d "%~dp0"

where python >nul 2>nul
if errorlevel 1 (
  echo.
  echo   Python 3 is needed to run the tracker and was not found on this PC.
  echo   Install Python 3 from the Microsoft Store, then run this again.
  echo.
  pause
  exit /b 1
)

python server.py %*
if errorlevel 1 pause
