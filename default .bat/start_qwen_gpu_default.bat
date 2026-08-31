@echo off
title Zerooo - GPU Server
cd /d D:\LLM\llama-cuda
echo Starting Zerooo with NVIDIA GPU acceleration...
echo.
echo GPU layers: 15
echo Context: 4096
echo Web UI: http://127.0.0.1:8080
echo.
echo Keep this window open while using the LLM.
echo Press Ctrl+C to stop the server.
echo.
llama-server.exe -m "D:\LLM\qwen3-4b-thinking-2507.Q4_K_M.gguf" -ngl 15 -c 4096
echo.
echo Server stopped.
pause
 

CHANGE THIS ACCORDINGLY