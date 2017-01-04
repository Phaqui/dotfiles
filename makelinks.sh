#!/bin/bash

# This script creates symlinks for all files in this folder

# Todo: Everything that resides in .config ????

dir=~/dotfiles
olddir=~/dotfiles_old
files="bashrc vimrc gitconfig i3status.conf"

mkdir -p $olddir

cd $dir

for file in $files; do
    if [ -f ~/.$file ]; then 
        mv ~/.$file $olddir
    fi

    # Create a symbolic link in the home directory that points to the specific file
    ln -s $dir/$file ~/.$file
done

