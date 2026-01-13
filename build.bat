@echo off
REM BabyForever Datapack Build Script (Windows)
REM This batch file runs the PowerShell build script

powershell.exe -ExecutionPolicy Bypass -File "%~dp0build.ps1"
pause
