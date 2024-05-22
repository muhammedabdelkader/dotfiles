#! /bin/bash


#####################
# Tool Installation #
#################### 

# 

##########################
# System Configurations #
########################
cd ./systemConfigurations/
chmod a+x *.sh 

## Use default value 
./changeScreenshotsStorage.sh 
./moveDock.sh
./touchID_sudo.sh

##################
# Add .Dotfiles #
#################
sudo gem install colorls

############################
# Update default settings #
###########################

