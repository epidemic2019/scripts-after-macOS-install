#!/bin/sh

############################## install homebrew ##############################
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

############################## install git ##############################
brew install git
git config --global user.name "re0marb1e"
git config --global user.email "re0marb1e@outlook.com"

############################## git clone this repository ##############################
git clone https://github.com/re0marb1e/scripts-after-macOS-install ~/Documents/WorkHome/GitHub/scripts-after-macOS-install
