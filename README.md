# ZEROoo Offline AI 🤖💬

**ZEROoo Offline AI** is a sleek, privacy-first, 100% offline desktop AI application designed to run local Large Language Models (LLMs) like Qwen, LLaMA, and mistral with local GPU acceleration or CPU mode.

---

## 🌟 Key Features

- **100% Offline & Private**: All model inference runs locally on your device—no internet connection or cloud API keys required.
- **GPU & CPU Support**:
  - **GPU Mode**: Powered by `llama-server.exe` with full CUDA offloading (`-ngl 99`) for maximum speed.
  - **CPU Mode**: Fallback execution using `llamafile` for machines without dedicated GPUs.
- **Modern Web Application UI**: Clean dark-mode interface with a dedicated sidebar, chat history management, custom system prompts, and context parameters.
- **Thinking / Reasoning Display**: Live visual streaming for reasoning models (e.g., Qwen 2.5/3 Thinking models).
- **One-Click Launchers**: Minimalist Windows batch scripts (`Zerooo-GPU.bat` & `Zerooo-CPU.bat`) that automatically start the backend server in the background and launch the UI as a standalone app window.

---

## 📁 Repository Structure

```
ZEROoo-Offline-Ai/
├── index.html                    # Main Web Application User Interface
├── zerooo.ico                    # Application Icon
├── Zerooo-GPU.bat                # One-click GPU launcher (CUDA)
├── Zerooo-CPU.bat                # One-click CPU launcher (llamafile)
├── Zerooo_app_perfect.bat        # Standalone UI app window launcher
├── start_qwen_gpu_default.bat    # Default GPU startup script
├── .gitignore                    # Excludes large binaries & models
└── default .bat/                 # Backup/Template batch launcher scripts
```

> **Note**: Model files (`*.gguf`), executables (`*.exe`), and CUDA binaries (`*.dll`) are excluded from Git version control due to GitHub's file size limits.

---

## 🚀 Quick Start Guide

### Prerequisites
1. **Windows OS** (with MS Edge installed for standalone app mode).
2. **Local Model File**: Download your preferred GGUF model (e.g., `qwen3-4b-thinking-2507.Q4_K_M.gguf` or any LLaMA GGUF model) from [HuggingFace](https://huggingface.co/).
3. **Backend Server**:
   - For **GPU Mode**: Place `llama-server.exe` and required CUDA DLLs into `llama-cuda/`.
   - For **CPU Mode**: Download `llamafile-0.10.5.exe` into the root folder.

### Running the Application

#### Option A: GPU Acceleration (Recommended)
1. Open `Zerooo-GPU.bat` in a text editor to update your model path and thread count if needed:
   ```cmd
   set THREADS=20
   ```
2. Double-click `Zerooo-GPU.bat`. This will start the `llama-server` on `http://127.0.0.1:8080` in the background and launch the ZEROoo App UI.

#### Option B: CPU Mode
1. Double-click `Zerooo-CPU.bat` to launch via `llamafile` in CPU mode.

---

## 🛠️ Configuration & Settings

- **Server Port**: `http://127.0.0.1:8080` (default)
- **UI Customization**: You can customize system prompts, temperature, and context length directly from the settings panel inside `index.html`.

---

## 📜 License

Distributed under the MIT License. Feel free to customize and expand for your personal offline AI setup.
