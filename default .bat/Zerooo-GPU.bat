@echo off
title Zerooo
cd /d D:\LLM\llama-cuda

REM Start the model server in the background (minimized, no visible window)
REM -ngl 99 = offload all layers to GPU (auto-caps to the model's actual layer count)
start "Zerooo Server" /min llama-server.exe -m "D:\LLM\qwen3-4b-thinking-2507.Q4_K_M.gguf" -ngl 99 -c 4096 --host 127.0.0.1 --port 8080

REM Give the server a moment to finish loading before opening the window
timeout /t 5 /nobreak >nul

REM Open your custom UI as its own app window (no tabs, no address bar)
start "" msedge --app=file:///D:/LLM/index.html --window-size=1000,750

exit
