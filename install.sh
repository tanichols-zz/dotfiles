#!/usr/bin/env bash

# Get current dir (run this script from anywhere)
export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Update dotfiles itself first
[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master

# Runcom symlinks
ln -sfv "$DOTFILES_DIR/runcom/.bash_profile" ~
ln -sfv "$DOTFILES_DIR/runcom/.inputrc" ~

# Git symplinks
ln -sfv "$DOTFILES_DIR/git/.gitconfig" ~
ln -sfv "$DOTFILES_DIR/git/.gitignore_global" ~

# System symlinks
ln -sfv "$DOTFILES_DIR/system/.alias" ~
ln -sfv "$DOTFILES_DIR/system/.function" ~
ln -sfv "$DOTFILES_DIR/system/.env" ~
ln -sfv "$DOTFILES_DIR/system/.prompt" ~
