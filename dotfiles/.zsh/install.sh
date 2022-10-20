
brew install zplug
brew install cowsay
brew install fortune
zplug "babasbot/auto-fortune-cowsay-zsh"
zplug install
brew install lolcat 

git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/babasbot/auto-fortune-cowsay-zsh $ZSH/custom/plugins/auto-fortune-cowsay

cd /tmp 
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh

