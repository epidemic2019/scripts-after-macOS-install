#!/bin/sh

# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install homebrew packages
# tools
brew install git
brew install wget
brew install tree
brew install aria2
brew install tmux
brew install xz
brew install expect
brew install imagemagick
brew install e2fsprogs
brew install telnet # conflicts with inetutils

# install and config proxychains-ng
brew install proxychains-ng
mkdir ~/.proxychains && cd ~/.proxychains
sed "/\[ProxyList\]/,\${/^[^#\[]/d;}" /usr/local/etc/proxychains.conf > proxychains.conf # modify sys proxychains.conf and save to user proxychains.conf
echo "socks5 127.0.0.1 1086" >> proxychains.conf # write user config

# env
brew install php
brew install node
brew install io
brew install go

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
brew install kafka # jdk and zookeeper required

# env management tools
brew install jenv
brew install pyenv
brew install rbenv

# blockchains
brew install ethereum
