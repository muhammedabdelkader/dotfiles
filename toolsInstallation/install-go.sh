#!/bin/bash 

brew install go
echo export PATH=$PATH:$(go env GOPATH)/bin >> ~/.zshrc 
echo export PATH=$PATH:$(go env GOPATH)/bin >> ~/.bash_profile


