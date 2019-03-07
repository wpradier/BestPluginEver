#!/bin/bash

VERSION_=""

if [ "$SHELL" == "/bin/zsh" ]; then
	VERSION_="~/.zshrc"
elif [ "$SHELL" == "/bin/bash" ]; then
	VERSION_="~/.bashrc"

sed -i '.bak' /"alias kekette"/d $VERSION_ && rm -rf ~/.BePlEv
