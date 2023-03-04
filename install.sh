#!/bin/bash

# FOR INSTALLING THE VIM PLUGINS:
# git submodule init
# git submodule update
#
# FOR INSTALLING NEW VIM PLUGINS:
# git submodule add https://github.com/path/to/pluginName \
#                   vim/bundle/pluginName
# git add vim/bundle/pluginName .gitmodules
# git commit -m "Added vim plugin: pluginName
# git push

ln -s $PWD/vimrc $HOME/.vimrc
ln -s $PWD/vim $HOME/.config/

ln -s $PWD/bashrc $HOME/.bashrc
ln -s $PWD/bash_profile $HOME/.bash_profile

ln -s $PWD/xinitrc $HOME/.xinitrc
ln -s $PWD/picom.conf $HOME/.config/picom.conf

ln -s $PWD/newsboat $HOME/.config/
