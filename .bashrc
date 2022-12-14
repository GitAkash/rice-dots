#!/bin/bash

stty -ixon # Disable ctrl-s and ctrl-q.
shopt -s autocd #Allows you to cd into directory merely by typing the directory name.

HISTSIZE= HISTFILESIZE= # Infinite history.

export PS1="\[$(tput bold)\]\[$(tput setaf 2)\]\u\[$(tput sgr0)\]@\[$(tput bold)\]\[$(tput setaf 2)\]\h \[$(tput setaf 5)\]\[$(tput setaf 7)\]~> \[$(tput sgr0)\]"

[ -f "$HOME/.config/shortcutrc" ] && source "$HOME/.config/shortcutrc" # Load shortcut aliases
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"





. "$HOME/.cargo/env"

neofetch
