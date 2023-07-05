
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

git clone -b new https://github.com/anDoer/vim-dev.git vim_dev

cd vim_dev
chmod +x install.sh
eval_cmd "Installing Neovim Env..." "./install.sh"
cd ..
rm -rf vim-dev
