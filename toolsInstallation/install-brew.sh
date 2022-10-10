#! /bin/bash 

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
echo 'PATH="/usr/local/bin:$PATH"' >> ~/.bash_profile
echo 'PATH="/usr/local/bin:$PATH"' >> ~/.zshrc

cd /usr/local/Homebrew/
git fetch origin
git reset --hard origin/master
cd - 
brew cleanup 

