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

package_install python3
package_install python3-pip

pip_install() {
    name="Install $1"
    eval_cmd "$name" "pip install --upgrade $1"
}

eval_cmd "Update system pip packages" "/usr/local/bin/pip3 list --outdated --format=freeze | xargs -n1 /usr/local/bin/pip3 install --upgrade"

pip_install pip
pip_install virtualenv

make_dir "$PYTHON_VENV"

download "Miniconda" "https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh"
eval_cmd "Install Miniconda" "Miniconda3-latest-Linux-x86_64.sh -b -u -p $CONDA_HOME"
eval_cmd "Initializing Miniconda" "source $CONDA_HOME/bin/activate && conda init bash"


