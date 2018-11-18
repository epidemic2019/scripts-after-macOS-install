#!/bin/sh

# install and config neo4j
brew install neo4j; # config file at /usr/local/Cellar/neo4j/<version>/libexec/conf
neo4j-admin set-initial-password <password>; # password read from 1password
cd /usr/local/Cellar/neo4j/<version>/libexec/plugins;
wget https://github.com/neo4j-contrib/neo4j-apoc-procedures/releases/download/3.4.0.3/apoc-3.4.0.3-all.jar;
# todo: read neo4j version from 'neo4j version'