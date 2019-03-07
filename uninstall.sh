#!/bin/bash

VERSION_=""

if [ -n `echo $SHELL | grep zsh` ]; then
	VERSION_="$HOME/.zshrc"
elif [ -n `echo $SHELL | grep bash` ]; then
	VERSION_="$HOME/.bashrc"
fi

sed -i '.bak' /"alias kekette"/d $VERSION_ && source $VERSION_ ; rm -rf ~/.BePlEv
