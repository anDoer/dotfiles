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

print_header Neovim

apt_add_ppa ppa:neovim-ppa/unstable
apt_update_sources
package_install neovim

eval_cmd "Configuring NodeJS 20 Sources" "curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -"
eval_cmd "Installing NodeJS 20..." "sudo apt-get install -y nodejs"

