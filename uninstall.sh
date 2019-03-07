#!/bin/bash

local VERSION=""

if [ "$SHELL" == "/bin/zsh" ]; then
	VERSION="~/.zshrc"
elif [ "$SHELL" == "/bin/bash" ]; then
	VERSION="~/.bashrc"

sed -i '.bak' /"alias kekette"/d $VERSION && rm -rf ~/.BePlEv
