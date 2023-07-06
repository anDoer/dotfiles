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

print_header Setup User

USER=$(whoami)

./system/user.sh
./fonts/user.sh
./python/user.sh
./neovim/user.sh
./obsidian/user.sh
