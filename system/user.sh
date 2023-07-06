#!/bin/bash
source ./utils/echos.sh
source ./utils/os.sh
source ./utils/package.sh
source ./utils/apt.sh
source ./utils/cmd.sh

cp system/pathrc "$HOME/.pathrc"
cp system/bash_aliases "$HOME/.bash_aliases"
