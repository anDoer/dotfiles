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

print_header Fonts

font_dir="$HOME/.fonts"
filename="fonts"

eval_cmd "wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/UbuntuMono.zip"
extract_zip UbuntuMono.zip $HOME/.fonts/
remove UbuntuMono.zip

eval_cmd "fc-cache -fv"
