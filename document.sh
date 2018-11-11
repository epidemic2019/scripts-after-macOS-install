#!/bin/sh

############################## GitRepos ##############################

mkdir -p ~/Documents/GitRepos
cd ~/Documents/GitRepos
wget https://github.com/apprenticeharper/DeDRM_tools/releases/download/v6.6.1/DeDRM_tools_6.6.1.zip; # download DeDRM_tools_<version>.zip
unzip DeDRM_tools_6.6.1.zip -d DeDRM_tools; # unzip to DeDRM_tools folder
rm -rf DeDRM_tools_6.6.1.zip; # delete origin file
git clone https://github.com/dracula/iterm.git
git clone https://github.com/facebook/create-react-app.git
git clone https://github.com/neo4j-contrib/neo4j-apoc-procedures.git

############################## WorkHome ##############################

# GitHub
cd ~/Documents/WorkHome/GitHub
git clone https://github.com/re0marb1e/easy-flow-control.git
git clone https://github.com/re0marb1e/goodle-desktop-search.git
git clone https://github.com/re0marb1e/java-maze.git
git clone https://github.com/re0marb1e/shields-badge-generator.git
git clone https://github.com/re0marb1e/pwccs-cli.git
git clone https://github.com/re0marb1e/js-util.git

# BitBucket
mkdir -p ~/Documents/WorkHome/BitBucket
cd ~/Documents/WorkHome/BitBucket
git clone https://re0marb1e@bitbucket.org/re0marb1e/re0marb1e-blog.git
git clone https://re0marb1e@bitbucket.org/re0marb1e/tech-blog.git

# DemoRepos
mkdir -p ~/Documents/WorkHome/DemoRepos
