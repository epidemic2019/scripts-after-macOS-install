#!/bin/sh

# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# tools
brew install git
brew install wget
brew install tree
brew install aria2
brew install tmux
brew install imagemagick
brew install proxychains-ng
brew install e2fsprogs

# env

brew install php
brew install node
brew install io

# project management tools

brew install composer
brew install maven # jdk required and conflicts with mvnvm
brew install gradle # jdk required

# db

brew install redis
brew install mysql
brew install mongodb

# server

brew install tomcat # jdk required
brew install nginx
brew install httpd

# big data

brew install zookeeper # jdk required

# env management tools

brew install jenv
brew install pyenv
