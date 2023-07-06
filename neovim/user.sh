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


eval_cmd "Getting vim config" "git clone -b new https://github.com/anDoer/vim-dev.git vim_dev"

cd vim_dev
chmod +x install.sh
eval_cmd "Installing Neovim Env..." "./install.sh"
cd ..
rm -rf vim-dev
