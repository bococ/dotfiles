#!/bin/bash
set -euo pipefail

echo "==> Configuring development environment..."

# Go
echo "    Setting up Go workspace..."
mkdir -p "$HOME/go/{bin,src,pkg}"

# Node
if command -v node &>/dev/null; then
    echo "    Node $(node --version) ready"
fi

# Python
if command -v python3 &>/dev/null; then
    echo "    Python $(python3 --version) ready"
fi

# Git LFS
if command -v git-lfs &>/dev/null; then
    echo "    Initializing Git LFS..."
    git lfs install
fi

echo "==> Development environment ready!"
