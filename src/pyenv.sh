#!/bin/sh

# python env management
brew install pyenv;
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshrc;
source ~/.zshrc;
