#!/bin/sh

############################## install brew packages ##############################

############### tools ###############
brew install tree        # Display directories as trees
brew install expect      # Program that can automate interactive applications
brew install telnet      # User interface to the TELNET protocol -- Conflicts with: inetutils --
brew install tmux        # Terminal multiplexer
brew install xz          # General-purpose data compression with high compression ratio
brew install imagemagick # Tools and libraries to manipulate images in many formats
brew install e2fsprogs   # Utilities for the ext2, ext3, and ext4 file systems
brew install aria2       # Download with resuming and segmented downloading
brew install duti        # Select default apps for documents and URL schemes on macOS

# install and config proxychains-ng
brew install proxychains-ng
mkdir ~/.proxychains && cd ~/.proxychains
sed "/\[ProxyList\]/,\${/^[^#\[]/d;}" /usr/local/etc/proxychains.conf >proxychains.conf # edit sys proxychains.conf and save as user proxychains.conf
echo "socks5 127.0.0.1 1086" >>proxychains.conf                                         # add socks5 to user config

############### env management tools ###############
sh ./src/jenv.sh  # java env management
sh ./src/pyenv.sh # python env management
sh ./src/rbenv.sh # ruby env management
sh ./src/nvm.sh   # node env management

############### language environment ###############
brew install php
brew install io
brew install go
brew install lua

############### package management tools ###############
brew install composer
composer config -g repo.packagist composer https://packagist.phpcomposer.com

brew install maven  # Java-based project management -- Requirements: JDK, Conflicts with: mvnvm --
# TODO: change maven source
brew install gradle # jdk required
# TODO: change gradle source
brew install luarocks

############### db ###############
brew install redis # config file at /usr/local/etc/redis.conf
brew install memcached
brew install mongodb    # config file at /usr/local/etc/mongod.conf
brew install postgresql # config file at /usr/local/var/postgres/postgresql.conf
sh ./src/db/mysql.sh    # install and config mysql
sh ./src/db/neo4j.sh    # install and config neo4j

############### server ###############
brew install tomcat # jdk required
brew install nginx  # config file at /usr/local/etc/nginx/
brew install httpd

############### distributed system  ###############
brew install zookeeper # jdk required, config file at /usr/local/etc/zookeeper/
brew install kafka     # jdk and zookeeper required, config file at /usr/local/etc/kafka/
# TODO: edit kafka config

############################## install brew cask packages ##############################
# quick-look-plugins see https://github.com/sindresorhus/quick-look-plugins
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlimagesize

# android related
brew cask install android-platform-tools
