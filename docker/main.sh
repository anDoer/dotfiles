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

print_header Docker

apt_update_sources

package_install "ca-certificates curl gnupg"
eval_cmd "Install Keyring" "sudo install -m 0755 -d /etc/apt/keyrings"
eval_cmd "Get Key" "curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg"
sudo chmod a+r /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

apt_update_sources
package_install "docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin"

eval_cmd "Add $USER to docker group" "sudo usermod -aG $USER docker"


