#!/bin/sh

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

sh brew.sh
sh npm.sh
sh document.sh
sh pip.sh
sh gem.sh