#!/bin/bash
list=(gitconfig tmux.conf vimrc)
for i in ${list[@]}; do
    cp ${i} ~/.${i}
done

mkdir -p ~/.config/fish/functions
cp config.fish ~/.config/fish
cp fish_prompt.fish ~/.config/fish/functions

# chsh -s /usr/local/bin/fish

exit 0
