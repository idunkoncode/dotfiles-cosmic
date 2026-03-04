#!/bin/bash
# Restore dotfile symlinks after a fresh install
# Configs live on /mnt/Stuffv1.0/System_Setup/dotfiles/

DOTFILES="/mnt/Stuffv1.0/System_Setup/dotfiles"

for dir in fish cosmic nushell bash micro doom emacs nvim autostart systemd; do
    if [ -d "$DOTFILES/$dir" ]; then
        ln -sf "$DOTFILES/$dir" ~/.config/$dir
        echo "✓ $dir"
    else
        echo "✗ $dir (not found in $DOTFILES)"
    fi
done
