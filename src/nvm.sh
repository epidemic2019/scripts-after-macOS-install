#!/bin/sh

# node env management
brew install node;
brew install nvm;
mkdir ~/.nvm;
echo 'export NVM_DIR="$HOME/.nvm"
  . "/usr/local/opt/nvm/nvm.sh"' >> ~/.zshrc;
source ~/.zshrc;
nvm install --lts=Boron;
nvm install --lts=Carbon;
nvm alias default system; # set system node as default
nvm use default;