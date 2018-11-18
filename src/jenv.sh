#!/bin/sh

# java env management
brew install jenv;
echo 'export PATH="$HOME/.jenv/bin:$PATH"' >> ~/.zshrc;
echo 'eval "$(jenv init -)"' >> ~/.zshrc;
mkdir -p ~/.jenv/versions;
for path in $(ls /Library/Java/JavaVirtualMachines)
do
	jenv add "/Library/Java/JavaVirtualMachines/$path/Contents/Home" # add java path to jenv
done
