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

print_header Python

pip_install() {
    name="Install $1"
    eval_cmd "$name" "pip install --upgrade $1"
}

pip_install pip

make_dir "$PYTHON_VENV"

download "https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh" "miniconda_installer.sh"
eval_cmd "Install Miniconda" "bash ./miniconda_installer.sh -b -u -p $CONDA_HOME"

source $CONDA_HOME/bin/activate
conda init bash
remove "miniconda_installer.sh"
