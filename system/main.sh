#!/bin/bash

source ./utils/echos.sh
source ./utils/os.sh
source ./utils/package.sh
source ./utils/apt.sh
source ./utils/cmd.sh

print_header System

#package_update
package_install wget
package_install curl
package_install unzip

package_install ripgrep

eval_cmd "Add key" "wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -"
eval_cmd "Set source" "echo deb http://dl.google.com/linux/chrome/deb/ stable main | sudo tee /etc/apt/sources.list.d/google.list"
apt_update_sources
apt_install google-chrome-stable



