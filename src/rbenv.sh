#!/bin/sh

# ruby env management
brew install rbenv;
echo 'eval "$(rbenv init -)"' >> .zshrc;
#rbenv install 2.5.3;