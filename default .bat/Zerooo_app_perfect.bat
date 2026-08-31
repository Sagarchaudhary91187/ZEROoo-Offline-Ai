@echo off
title Zerooo
cd /d D:\LLM\llama-cuda

REM Start the model server in the background (minimized, no visible window)
start "Zerooo Server" /min llama-server.exe -m "D:\LLM\qwen3-4b-thinking-2507.Q4_K_M.gguf" -ngl 20 -c 4096 --host 127.0.0.1 --port 8080

REM Give the server a moment to finish loading before opening the window
timeout /t 5 /nobreak >nul

REM Open your custom UI as its own app window (no tabs, no address bar)
REM Opens the local file directly, so it's always YOUR UI, not the server's built-in one
start "" msedge --app=file:///D:/LLM/index.html --window-size=1000,750

exit
