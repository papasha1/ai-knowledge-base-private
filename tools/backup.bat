@echo off
chcp 65001 >nul
setlocal

set "SOURCE=D:\PrivateKnowledgeArchive"
set "BACKUP=D:\PrivateKnowledgeArchiveBackups"
for /f "tokens=1-6 delims=/:. " %%a in ("%date% %time%") do set "TIMESTAMP=%%a%%b%%c_%%d%%e%%f"
set "DEST=%BACKUP%\backup_%TIMESTAMP%"

mkdir "%DEST%" 2>nul
xcopy "%SOURCE%\*" "%DEST%\" /E /I /Q /Y /EXCLUDE:%~dp0backup_exclude.txt >nul

echo.
echo 备份完成：%DEST%
echo.
pause
