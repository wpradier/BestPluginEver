#!/bin/bash

local VERSION=""

if [ "$SHELL" == "/bin/zsh" ]; then
	VERSION="~/.zshrc"
elif [ "$SHELL" == "/bin/bash" ]; then
	VERSION="~/.bashrc"
else
	printf "\033[31m ERROR: Unsupported shell.\n\033[0mAvailable shells for the Best Plugin Ever to work:\n\033[30;47mBASH\nZSH\nUninstalling..."
	~/.BePlEv/uninstall.sh
	exit
fi
echo 'alias kekette="~/.BePlEv/aouiouiX.sh"' >> $VERSION
