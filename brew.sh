#!/bin/sh

############################## install homebrew ##############################
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

############################## install brew packages ##############################

############### tools ###############
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

############### env management tools ###############

# java env management
brew install jenv
echo 'export PATH="$HOME/.jenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(jenv init -)"' >> ~/.zshrc

# python env management
brew install pyenv

# ruby env management
brew install rbenv

# node env management
brew install node;
brew install nvm;
mkdir ~/.nvm
echo 'export NVM_DIR="$HOME/.nvm"
  . "/usr/local/opt/nvm/nvm.sh"' >> ~/.zshrc
nvm install v6.14.4;
nvm install v8.12.0;

############### language environment ###############
brew install php;
brew install io;
brew install go;

############### project management tools ###############
brew install composer;
brew install maven; # jdk required and conflicts with mvnvm
brew install gradle; # jdk required

############### db ###############
brew install redis;
brew install mysql;
brew install mongodb;
brew install neo4j;

############### server ###############
brew install tomcat; # jdk required
brew install nginx; # config file in /usr/local/etc/nginx/
brew install httpd;

############### distributed system  ###############
brew install zookeeper; # jdk required, config file in /usr/local/etc/zookeeper/
brew install kafka; # jdk and zookeeper required, config file in /usr/local/etc/kafka/

############### blockchains ###############
brew install ethereum;

############################## install brew cask packages ##############################
# quick-look-plugins see https://github.com/sindresorhus/quick-look-plugins
brew cask install qlcolorcode;
brew cask install qlstephen;
brew cask install qlmarkdown;
brew cask install quicklook-json;
brew cask install qlimagesize;
