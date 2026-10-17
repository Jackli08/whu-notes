@echo off
chcp 936>nul
cd /d "%~dp0"
title 笔记站运行中 - 关掉这个黑窗口就是关掉网站
cls
echo.
echo    ==========================================
echo.
echo      数学笔记站正在启动，请稍等几秒钟
echo.
echo      稍后会自动打开浏览器，网址是：
echo.
echo            http://127.0.0.1:8000
echo.
echo    ==========================================
echo.
echo      这个黑窗口不能关！
echo      关掉它 = 关掉网站，网页就打不开了
echo.
echo      想停止的时候，直接关闭这个黑窗口即可
echo.
echo.
start "" /MIN cmd /c "timeout /t 5 >nul && start http://127.0.0.1:8000"
.venv\Scripts\python.exe -m mkdocs serve
echo.
echo      服务已停止。按任意键关闭窗口。
pause >nul
