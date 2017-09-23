#!/bin/bash
list=(gitconfig tmux.conf vimrc)
for i in ${list[@]}; do
    cp ${i} ~/.${i}
done
exit 0
