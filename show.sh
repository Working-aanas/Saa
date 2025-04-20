#!/bin/bash

# Install pyautogui if not already installed
pip install pyautogui --quiet

# Open VMQuickConfig application (assuming Wine or equivalent app is available)
wine "C:/Users/Public/Desktop/VMQuickConfig.exe" &

# Execute pyautogui commands
python3 -c "import pyautogui as pag; pag.click(143, 487, duration=5)"
python3 -c "import pyautogui as pag; pag.click(155, 554, duration=2)"
python3 -c "import pyautogui as pag; pag.click(637, 417, duration=2)"
python3 -c "import pyautogui as pag; pag.click(588, 10, duration=2)"

echo ".........................................................."
echo ".....Brought By The Disala................................"
echo ".........................................................."
echo "......#####...######...####....####...##.......####......."
echo "......##..##....##....##......##..##..##......##..##......"
echo "......##..##....##.....####...######..##......######......"
echo "......##..##....##........##..##..##..##......##..##......"
echo "......#####...######...####...##..##..######..##..##......"
echo ".........................................................."
echo "......... Telegram Channel - https://t.me/TheDisala4U ...."
echo ".........................................................."
echo "..Youtube Channel - https://www.youtube.com/@The_Disala .."
echo ".........................................................."
echo "User name : runneradmin"
echo "User Pass : TheDisa1a"
