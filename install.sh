#!/bin/bash

VERSION_=""

if [ "$SHELL" == "/bin/zsh" ]; then
	VERSION_="~/.zshrc"
elif [ "$SHELL" == "/bin/bash" ]; then
	VERSION_="~/.bashrc"
else
	printf "\033[31m ERROR: Unsupported shell.\n\033[0mAvailable shells for the Best Plugin Ever to work:\n\033[30;47mBASH\nZSH\nUninstalling..."
	~/.BePlEv/uninstall.sh
	exit
fi
echo 'alias kekette="~/.BePlEv/aouiouiX.sh"' >> $VERSION_
