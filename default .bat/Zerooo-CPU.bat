@echo off
title Zerooo
cd /d D:\LLM

REM Start llamafile server in the background (minimized, no visible window)
REM --gpu none = CPU-only, works on any machine without a dedicated GPU
start "Zerooo Server" /min .\llamafile-0.10.5.exe --server --model qwen3-4b-thinking-2507.Q4_K_M.gguf --gpu none

REM Give the server a moment to finish loading before opening the window
timeout /t 5 /nobreak >nul

REM Open your custom UI as its own app window (no tabs, no address bar)
start "" msedge --app=file:///D:/LLM/index.html --window-size=1000,750

exit
