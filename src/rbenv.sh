#!/bin/sh

############################## ruby env management ##############################

brew install rbenv;
echo 'eval "$(rbenv init -)"' >> ~/.zshrc;
source ~/.zshrc;
rbenv install 2.5.3;
rbenv global 2.5.3;
gem sources --add https://gems.ruby-china.com/ --remove https://rubygems.org/;
sh ./ruby-gem.sh;

############################## install gem packages ##############################

gem install bundler;
gem install jekyll;