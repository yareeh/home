#!/usr/bin/env bash

cd dotfiles

for file in $(ls); do
    ln -fs "$(pwd)/$file" "$HOME/.$file"
done
