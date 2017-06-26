#!/bin/sh

cwd=$PWD
cd $HOME
ln -s $cwd/.inputrc .inputrc
ln -s $cwd/.zshrc .zshrc
ln -s $cwd/.vimrc .vimrc
ln -s $cwd/.tmux.conf .tmux.conf
ln -s $cwd/XTerm XTerm
install -d $HOME/.ipython/profile_default
cd $HOME/.ipython/profile_default/
ln -s $cwd/ipython_config.py ipython_config.py
cd $cwd
