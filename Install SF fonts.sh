#!/bin/bash

#Install fonts to /usr/share/fonts/

git clone https://github.com/NeroDoD/SFFonts
sudo cp -r 'SFFonts/SF Compact' /usr/share/fonts/
sudo cp -r 'SFFonts/SF Pro' /usr/share/fonts/
sudo cp -r 'SFFonts/SF Monospace' /usr/share/fonts/
sudo rm -rf SFFonts