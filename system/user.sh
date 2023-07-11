#!/bin/bash
source ./utils/echos.sh
source ./utils/os.sh
source ./utils/package.sh
source ./utils/apt.sh
source ./utils/cmd.sh

# Set PATHs and variables
echo 'export OS="linux"' >> $HOME/.bashrc
echo 'export MINICONDA_HOME="$HOME/miniconda3"' >> $HOME/.bashrc
echo 'export PATH="$MINICONDA_HOME/bin:$PATH"' >> $HOME/.bashrc
echo 'export DOTFILES_HOME="$HOME/dotfiles"' >> $HOME/.bashrc


cp system/bash_aliases "$HOME/.bash_aliases"
