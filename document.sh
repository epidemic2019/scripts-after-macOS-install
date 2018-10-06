#!/bin/sh

############################## GitRepos ##############################

mkdir GitRepos
git clone https://github.com/apprenticeharper/DeDRM_tools.git
git clone https://github.com/dracula/iterm.git

############################## WorkHome ##############################

# GitHub
cd ~/Document
mkdir -p WorkHome/GitHub
cd ./WorkHome/GitHub
git clone https://github.com/re0marb1e/easy-flow-control.git
git clone https://github.com/re0marb1e/goodle-desktop-search.git
git clone https://github.com/re0marb1e/java-maze.git
git clone https://github.com/re0marb1e/shields-badge-generator.git

# BitBucket
cd ~/Document
mkdir -p WorkHome/BitBucket
cd ./WorkHome/BitBucket

# DemoRepos
cd ~/Document
mkdir -p WorkHome/DemoRepos
