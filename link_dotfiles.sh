#!/usr/bin/env bash

cd dotfiles

# Detect OS
if [[ "$OSTYPE" == "darwin"* ]]; then
    PLATFORM="macos"
else
    PLATFORM="linux"
fi

# Link common dotfiles
for file in $(ls); do
    # Skip platform-specific gitconfig files
    if [[ "$file" == "gitconfig-macos" || "$file" == "gitconfig-linux" ]]; then
        continue
    fi
    ln -fs "$(pwd)/$file" "$HOME/.$file"
done

# Link platform-specific gitconfig
if [[ -f "gitconfig-$PLATFORM" ]]; then
    ln -fs "$(pwd)/gitconfig-$PLATFORM" "$HOME/.gitconfig-local"
fi

echo "Dotfiles linked for $PLATFORM"
