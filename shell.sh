#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

function doIt() {
    # Copy shell dotfiles to home

    cp .bash_profile ~/.
    cp .bash_prompt ~/.
    cp .exports ~/.
    cp .aliases ~/.
    cp .functions ~/.
    cp .curlrc ~/.
    cp .inputrc ~/.
    cp .screenrc ~/.
    cp .vimrc ~/.
    cp .wgetrc ~/.
    
    source ~/.bash_profile;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
    doIt;
else
    read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
    echo "";
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        doIt;
    fi;
fi;
unset doIt;
