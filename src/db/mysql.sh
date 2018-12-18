#!/bin/sh

# install and config mysql
brew install mysql; # config file at /usr/local/etc/my.cnf
brew services start mysql;
mysqladmin -u root password <password>; # Warning: Since password will be sent to server in plain text, use ssl connection to ensure password safety.