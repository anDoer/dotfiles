#!/bin/sh

. ./utils/cmd.sh

apt_update() {
  name="Update packages"
  eval_cmd "$name" "sudo -E apt upgrade"
}

apt_update_sources() {
  name="Update package sources"
  eval_cmd "$name" "sudo -E apt update"
}

apt_install() {
  name="Install $1"
  eval_cmd "$name" "sudo -E apt -y --force-yes install $1"
}

apt_add_ppa() {
  name="Add $1"
  eval_cmd "$name" "sudo -E add-apt-repository -y $1"
  apt_update_sources
}

apt_add_key() {
  name="Add key"
  eval_cmd "$name" "sudo -E apt-key adv --keyserver $1 --recv-keys $2"
}
