#!/bin/bash

. ./utils/echos.sh

error_exit() {
  print_error "$1" "$2"
  exit 1
}
