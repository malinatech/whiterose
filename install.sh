#!/bin/bash

echo "[!] installing required software (debian)"
sudo apt-get install sox libsox-fmt-all -y
echo "[!] done"
chmod +x belaruza
printf "[?] do you want to add a PATH? (use 'whiterose' to run it from terminal) y/n? : "
read output

if [[ "$output" == "y" || "$output" == "Y" ]]; then
    mkdir ~/.local/bin/
    cp whiterose audio.mp3  ~/.local/bin/
else
    echo "baii :("
fi
