#!/bin/sh

# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# tools
brew install git
brew install wget
brew install tree
brew install aria2
brew install proxychains-ng

# env
brew install node
brew install io

# env management tools
brew install jenv
brew install pyenv
