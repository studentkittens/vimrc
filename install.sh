#!/bin/sh

INFO_COLOR="\e[32m"
RESET_COLOR="\e[0m"
FINISHED="\e[34m"

echo -e $INFO_COLOR"Fetching neobundle..."$RESET_COLOR
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh > /dev/null

echo -e $INFO_COLOR"Creating symlinks to ln -s ~/.vim/.vimrc ~/.vimrc"$RESET_COLOR
ln -s ~/.vim/.vimrc ~/.vimrc

echo -e $INFO_COLOR"Creating Vim undo folder -> ~/.vim/tmp/undo"$RESET_COLOR
mkdir ~/.vim/tmp/undo -p

echo -e $FINISHED"Installation finished. Just start Vim and enjoy your day! :)"$RESET_COLOR
