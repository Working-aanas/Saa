#!/bin/bash

pip install psutil --quiet
pip install requests --quiet

curl -s -L -o loop.py https://gitlab.com/chamod12/lm_win-10_github_rdp/-/raw/main/loop.py

python3 loop.py
