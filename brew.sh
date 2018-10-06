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
sed "/\[ProxyList\]/,\${/^[^#\[]/d;}" /usr/local/etc/proxychains.conf > proxychains.conf # edit sys proxychains.conf and save as user proxychains.conf
echo "socks5 127.0.0.1 1086" >> proxychains.conf # add socks5 to user config

############### env management tools ###############

# java env management
brew install jenv;
echo 'export PATH="$HOME/.jenv/bin:$PATH"' >> ~/.zshrc;
echo 'eval "$(jenv init -)"' >> ~/.zshrc;

# python env management
brew install pyenv;
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshrc;

# ruby env management
brew install rbenv;
echo 'eval "$(rbenv init -)"' >> .zshrc;

# node env management
brew install node;
brew install nvm;
mkdir ~/.nvm
echo 'export NVM_DIR="$HOME/.nvm"
  . "/usr/local/opt/nvm/nvm.sh"' >> ~/.zshrc

############### language environment ###############
brew install php;
brew install io;
brew install go;

############### project management tools ###############
brew install composer;
# todo: change composer source
brew install maven; # jdk required and conflicts with mvnvm
# todo: change maven source
brew install gradle; # jdk required
# todo: change gradle source

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
# todo: edit kafka config

############### blockchains ###############
brew install ethereum;

############################## install brew cask packages ##############################
# quick-look-plugins see https://github.com/sindresorhus/quick-look-plugins
brew cask install qlcolorcode;
brew cask install qlstephen;
brew cask install qlmarkdown;
brew cask install quicklook-json;
brew cask install qlimagesize;
