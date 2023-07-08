#!/bin/bash

source ./variables.sh
source ./utils/echos.sh
source ./utils/sudo.sh
source ./utils/os.sh
source ./utils/package.sh
source ./utils/dir.sh
source ./utils/cmd.sh
source ./utils/download.sh
source ./utils/remove.sh
source ./utils/extract.sh

print_header Installing Obsidian


mkdir -p "$DOTFILES_BIN"
download "https://github.com/obsidianmd/obsidian-releases/releases/download/v1.3.5/Obsidian-1.3.5.AppImage" "Obsidian.AppImage"
eval_cmd "Move" "mv Obsidian.AppImage $DOTFILES_BIN"
eval_cmd "Chmod" "chmod +x $DOTFILES_BIN/Obsidian.AppImage"
