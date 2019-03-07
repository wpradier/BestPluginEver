#!/bin/bash

VERSION_=""

if [ -n `echo $SHELL | grep zsh` ]; then
	VERSION_="$HOME/.zshrc"
elif [ -n `echo $SHELL | grep bash` ]; then
	VERSION_="$HOME/.bashrc"

sed -i '.bak' /"alias kekette"/d $VERSION_ && rm -rf ~/.BePlEv
