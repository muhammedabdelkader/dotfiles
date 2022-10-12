#! /bin/bash 

brew install gradle
brew install --cask ghidra
/opt/homebrew/Caskroom/ghidra/$(ls  /opt/homebrew/Caskroom/ghidra/ | grep -e '[0-9]')/$(ls  /opt/homebrew/Caskroom/ghidra/$(ls  /opt/homebrew/Caskroom/ghidra/ | grep -e '[0-9]') | grep PUBLIC)/support/buildNatives
