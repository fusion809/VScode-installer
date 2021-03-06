#!/bin/bash
. ./lib/build/vscode.sh

function sabayon_build {
  # Get dependencies
  sudo equo i net-libs/nodejs sys-devel/base-gcc sys-devel/gcc sys-libs/glibc \
    dev-vcs/git gnome-base/gnome-keyring gnome-base/libgnome-keyring x11-libs/libX11 dev-lang/python:2.7

  sudo npm install -g gulp node-gyp

  vscode_build
}

export -f sabayon_build
