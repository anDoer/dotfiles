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

print_header Bootstrap

ask_for_sudo

package_install git

./system/main.sh
./ssh/main.sh
./fonts/main.sh
./python/main.sh
./tmux/main.sh
./neovim/main.sh
./docker/main.sh


