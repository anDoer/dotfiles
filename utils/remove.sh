#!/bin/sh

. ./utils/cmd.sh

remove() {
  if [ -d "$1" ]; then
    name="Remove directory $(basename "$1")"
    eval_cmd "$name" "rm -rf $1"
  fi

  if [ -f "$1" ]; then
    name="Remove file $(basename "$1")"
    eval_cmd "$name" "rm -rf $1"
  fi
}

sudo_remove() {
  if [ -d "$1" ]; then
    name="Remove directory $(basename "$1")"
    eval_cmd "$name" "sudo -E rm -rf $1"
  fi

  if [ -f "$1" ]; then
    name="Remove file $(basename "$1")"
    eval_cmd "$name" "sudo -E rm -rf $1"
  fi
}
