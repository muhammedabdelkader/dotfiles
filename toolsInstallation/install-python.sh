#! /bin/bash 

brew install python
brew install pyenv
echo 'eval "$(pyenv init -)"' >> ~/.bash_profile
echo 'eval "$(pyenv init -)"' >> ~/.zshrc 
curl https://bootstrap.pypa.io/get-pip.py > /tmp/get-pip.py
sudo python3 /tmp/get-pip.py 
pip install virtualenv
pip install 'ipython[zmq,qtconsole,notebook,test]'
exec $SHELL
pyenv install --list

