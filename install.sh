#!/bin/bash

VERSION_=""

if [ -n `echo $SHELL | grep zsh` ]; then
	VERSION_="$HOME/.zshrc"
elif [ -n `echo $SHELL | grep bash` ]; then
	VERSION_="$HOME/.bashrc"
else
	printf "\033[31m ERROR: Unsupported shell.\n\033[0mAvailable shells for the Best Plugin Ever to work:\n\033[30;47mBASH\nZSH\nUninstalling..."
	~/.BePlEv/uninstall.sh
	exit
fi
echo 'alias kekette="~/.BePlEv/aouiouiX.sh"' >> $VERSION_ && source $VERSION_
