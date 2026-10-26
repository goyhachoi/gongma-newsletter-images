@echo off
set LOG=%~dp0push_log.txt
echo start > "%LOG%"
cd /d "%~dp0" >> "%LOG%" 2>&1
if not exist .git git init -b main >> "%LOG%" 2>&1
git add -A >> "%LOG%" 2>&1
git -c user.name=goyhachoi -c user.email=goyha.choi@gmail.com commit -m "khk-intro newsletter images" >> "%LOG%" 2>&1
git remote remove origin >> "%LOG%" 2>&1
git remote add origin https://github.com/goyhachoi/gongma-newsletter-images.git >> "%LOG%" 2>&1
git push -u origin HEAD:main >> "%LOG%" 2>&1
echo exit code %ERRORLEVEL% >> "%LOG%"
type "%LOG%"
echo.
echo ---- Press any key to close ----
pause
