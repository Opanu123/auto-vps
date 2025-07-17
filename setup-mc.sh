#!/bin/bash

# === Folder ===
mkdir -p ~/vps-backup/minecraft
cd ~/vps-backup/minecraft

# === Download Paper 1.20.1 ===
echo "Downloading PaperMC 1.20.1..."
curl -o paper.jar https://api.papermc.io/v2/projects/paper/versions/1.20.1/builds/196/downloads/paper-1.20.1-196.jar

# === Accept EULA ===
echo "eula=true" > eula.txt

# === Start the server ===
echo "Starting server..."
java -Xms1G -Xmx2G -jar paper.jar nogui
