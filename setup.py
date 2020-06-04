# Name: Akshath Jain
# Date: 6/4/20
# Purpose: Download appropriate tools and move files into the correct place

import os

files = ['.zshrc']

pwd = os.getcwd()
for f in files:
    os.system(f'ln -sf {pwd}/{f} ~/{f}')
