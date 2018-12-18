#!/bin/sh

############################## install brew packages ##############################

############### tools ###############
brew install tree;
brew install expect;
brew install telnet; # conflicts with inetutils
brew install tmux;
brew install xz;
brew install imagemagick;
brew install e2fsprogs;
brew install aria2;

# install and config proxychains-ng
brew install proxychains-ng
mkdir ~/.proxychains && cd ~/.proxychains
sed "/\[ProxyList\]/,\${/^[^#\[]/d;}" /usr/local/etc/proxychains.conf > proxychains.conf # edit sys proxychains.conf and save as user proxychains.conf
echo "socks5 127.0.0.1 1086" >> proxychains.conf # add socks5 to user config

############### env management tools ###############
sh ./src/jenv.sh # java env management
sh ./src/pyenv.sh # python env management
sh ./src/rbenv.sh # ruby env management
sh ./src/nvm.sh # node env management

############### language environment ###############
brew install php;
brew install io;
brew install go;

############### project management tools ###############
brew install composer;
# TODO: change composer source
brew install maven; # jdk required and conflicts with mvnvm
# TODO: change maven source
brew install gradle; # jdk required
# TODO: change gradle source

############### db ###############
brew install redis; # config file at /usr/local/etc/redis.conf
brew install memcached; 
brew install mongodb; # config file at /usr/local/etc/mongod.conf
sh ./src/db/mysql.sh # install and config mysql
sh ./src/db/neo4j.sh # install and config neo4j

############### server ###############
brew install tomcat; # jdk required
brew install nginx; # config file at /usr/local/etc/nginx/
brew install httpd;

############### distributed system  ###############
brew install zookeeper; # jdk required, config file at /usr/local/etc/zookeeper/
brew install kafka; # jdk and zookeeper required, config file at /usr/local/etc/kafka/
# TODO: edit kafka config

############### blockchains ###############
brew install ethereum;

############################## install brew cask packages ##############################
# quick-look-plugins see https://github.com/sindresorhus/quick-look-plugins
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlimagesize;

# android related
brew cask install android-platform-tools
