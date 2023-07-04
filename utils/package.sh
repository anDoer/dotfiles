#!/bin/sh

. ./utils/os.sh
. ./utils/apt.sh
. ./utils/error.sh

os_not_supported="It seems that your OS is not supported"

package_update() {
  if [ on_ubuntu ] || [ on_tuxedo ]; then
    apt_update
  else
    error_exit "Update packages" "$os_not_supported"
  fi
}

package_install() {
  if [ on_ubuntu ] || [ on_tuxedo ]; then
    apt_install "$1"
  else
    error_exit "Install $1" "$os_not_supported"
  fi
}
