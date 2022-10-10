#! /bin/bash 


change_screenshots_storage (){
defaultPath="$HOME/Desktop/.screenshots"
if [ -z "$1" ]
then 
	mkdir -p $defaultPath
else 
	defaultPath=$1
	if [ -d $defaultPath ]
	then 
		echo $defaultPath "already exists"
	else
		mkdir -p $defaultPath
	fi

fi
defaults write com.apple.screencapture location $defaultPath
killall SystemUIServer
}

if [[ $# -ne 0 ]]; then
        change_screenshots_storage $1
else
        change_screenshots_storage
fi


