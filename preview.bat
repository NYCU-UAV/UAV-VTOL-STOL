@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo 正在啟動本機預覽伺服器 http://localhost:8000/  （關掉這個視窗就會停止）
start "VTOL-STOL 講義預覽" cmd /k "py -m http.server 8000 || python -m http.server 8000"
timeout /t 2 >nul
start "" http://localhost:8000/
