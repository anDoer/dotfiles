#!/bin/sh

. ./utils/cmd.sh
. ./utils/package.sh

download() {
  name="Download $(basename "$1")"

  if ! cmd_exists curl; then
    package_install curl
  fi

  eval_cmd "$name" "curl -LO -o $2 $1"
}
