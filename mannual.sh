#!/bin/sh

############################## install homebrew ##############################
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

############################## install git ##############################
brew install git

############################## git clone this repository ##############################
git clone https://github.com/re0marb1e/scripts-after-macOS-install ~/Documents/WorkHome/GitHub/scripts-after-macOS-install
