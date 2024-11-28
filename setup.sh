#!/bin/bash

# Function to create symlink if it doesn't exist
create_symlink() {
    local source=$1
    local target=$2

    if [ ! -e "$target" ]; then
        ln -s "$source" "$target"
        echo "Symlink created: $target -> $source"
    else
        echo "Skipped: $target already exists."
    fi
}

# Define the files and their target locations
create_symlink "$HOME/.dotfiles/bash_aliases" "$HOME/.bash_aliases"
create_symlink "$HOME/.dotfiles/inputrc" "$HOME/.inputrc"
