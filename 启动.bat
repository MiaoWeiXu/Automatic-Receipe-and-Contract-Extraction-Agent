@echo off
chcp 65001 >nul
cd /d "%~dp0"
set PORT=8765
echo.
echo  单证速录 - 本机运行，只监听 127.0.0.1，外部电脑无法访问
echo  浏览器地址: http://127.0.0.1:%PORT%/
echo  使用完毕直接关闭本窗口即可
echo.
start "" "http://127.0.0.1:%PORT%/"
where python >nul 2>nul && (python -m http.server %PORT% --bind 127.0.0.1 & goto :eof)
where py >nul 2>nul && (py -m http.server %PORT% --bind 127.0.0.1 & goto :eof)
echo 没有找到 Python。请安装 Python 3，或直接双击 index.html 使用（扫描件 / 照片识别不可用）。
pause
