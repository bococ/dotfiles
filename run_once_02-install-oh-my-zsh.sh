#!/bin/bash
set -euo pipefail

echo "==> Installing Oh My Zsh..."
if [[ -d "$HOME/.oh-my-zsh" ]]; then
    echo "    Oh My Zsh already installed, skipping."
else
    RUNZSH=no KEEP_ZSHRC=yes sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi
