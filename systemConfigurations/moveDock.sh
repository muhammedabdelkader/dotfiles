#! /bin/bash 

change_dock_position () {
case $1 in

  left)
    defaults write com.apple.dock orientation left
    ;;
  
 right)
    defaults write com.apple.dock orientation right
    ;;

   *)
    defaults write com.apple.dock orientation bottom
    ;;
esac
# restart the dock service 
killall Dock 
}

if [[ $# -ne 0 ]]; then 
	change_dock_position $1
else 
	change_dock_position "left"
fi

