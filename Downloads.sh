#!/bin/bash

# Install requirements
pip install pyautogui --quiet

# Download scripts
curl -s -L -o setup.py https://gitlab.com/chamod12/lm_win-10_github_rdp/-/raw/main/setup.py
curl -s -L -o show.sh https://github.com/Working-aanas/Saa/blob/main/show.sh
curl -s -L -o loop.sh https://github.com/Working-aanas/Saa/blob/main/loop.sh

# LiteManager (Windows app), downloaded and extracted
curl -s -L -o litemanager.zip "https://www.litemanager.com/soft/litemanager_5.zip"
unzip litemanager.zip -d "./litemanager"

# GUI-based applications below will require Wine if you must run on Linux:
curl -s -L -o TelegramSetup.exe "https://telegram.org/dl/desktop/win64"
curl -s -L -o WinrarSetup.exe "https://www.rarlab.com/rar/winrar-x64-621.exe"
curl -s -L -o VMQuickConfig.exe "https://github.com/chieunhatnang/VM-QuickConfig/releases/download/1.6.1/VMQuickConfig.exe"

# Silent install via Wine (only if Wine is available)
wine TelegramSetup.exe /VERYSILENT /NORESTART && rm TelegramSetup.exe
wine WinrarSetup.exe /S && rm WinrarSetup.exe

# These shortcuts removal steps are irrelevant on Linux, omit them

# Changing user password (Linux equivalent)
sudo passwd runneradmin << EOF
TheDisa1a
TheDisa1a
EOF

# GUI automation via Python
python3 -c "import pyautogui as pag; pag.click(897, 64, duration=2)"

# Running LiteManager via Wine (assuming it supports MSI)
wine msiexec /i "LiteManager Pro - Server.msi"

python3 setup.py
