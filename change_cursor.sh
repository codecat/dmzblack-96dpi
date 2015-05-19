#!/bin/bash

####################################################################
##                                                                ##
##     Script to change cursors. Only lists themes installed to   ##
##     /usr/share/icons.                                          ##
##     Theme must have a cursor.theme file                        ##
##                                                                ##
####################################################################

####################################################################
##                                                                ##
##     To change the cursor theme, the script will                ##
##	1) Change dconf setting                                   ##
##	2) Register the theme with update-alternatives            ##
##	3} Select the theme in update-alternatives                ##
##                                                                ##
##     To change the cursor size the script will                  ##
##	1) Change dconf setting                                   ##
##	2) Edit the ~/.Xresources file or create if               ##
##         it doesn't exist                                       ##
##                                                                ##
##      ....................................                      ##
##      :   Tested in Ubuntu Raring 13.04  :                      ##
##      :..................................:                      ##
####################################################################

CURRENTSIZE=$(gsettings get org.gnome.desktop.interface cursor-size)
THEME=$(gsettings get org.gnome.desktop.interface cursor-theme)
touch ~/.Xresources

## create installed cursor list text file
#ls -R /usr/share/icons | grep "\/cursors:" | sed -e 's/\/cursors://g' -e 's/\/usr\/share\/icons\///g' > ~/.cursorlist.txt
find /usr/share/icons -name "cursor.theme" | cut -f 5 -d '/' | sort > ~/.cursorlist.txt
echo -e "\n\033[36mYour current cursor theme is \033[0m$THEME \033[36m"

 
## show a numbered list of cursors to choose from
cat -b ~/.cursorlist.txt 
totalthemes=$(wc -l ~/.cursorlist.txt | awk '{print $1}') 

	echo -e "\033[36mEnter your new theme selection number:\033[0m"
	read CHOICE


## match the theme selection number to the cursor name
CURSOR=$(cat ~/.cursorlist.txt | sed -n $CHOICE'p') 
	echo -e "\n\033[36mYou have selected \033[0m$CURSOR\n\033[36mContinue?(Y/n):\033[0m"
	read Ans
if [[ $Ans == "y" || $Ans == "Y" || $Ans == "yes" || $Ans == "Yes" || $Ans == "" ]]
  then
    echo -e "\n\033[36mUsing update-alternatives requires Authentication of Admin privileges...\033[0m"
  else
    echo -e "\nYou chose not to continue...\n"
	echo -e "\n\033[36mYour current cursor theme is \033[0m$THEME \033[36m"
	read -n 1 -p "Press any key to exit this script..."
exit
fi


## Change to selected  cursor
	gsettings set org.gnome.desktop.interface cursor-theme "$CURSOR" &
	sudo update-alternatives --install /usr/share/icons/default/index.theme x-cursor-theme /usr/share/icons/$CURSOR/cursor.theme 20 & wait;
	sudo update-alternatives --set x-cursor-theme /usr/share/icons/$CURSOR/cursor.theme &
	#sudo sh -c "echo '[Icon Theme]\nInherits=$CURSOR' > /usr/share/icons/DMZ-White/cursor.theme"
wait;


## Set size of cursor
CURRENTSIZE=$(gsettings get org.gnome.desktop.interface cursor-size)
	echo -e "\n\033[36mYour current cursor size is \033[0m$CURRENTSIZE \n\033[36mWould you like to change the size?(Y/n):\033[0m"
	read Ans
if [[ $Ans == "y" || $Ans == "Y" || $Ans == "yes" || $Ans == "Yes" || $Ans == "" ]]
  then
    echo  
  else
    echo -e "\nYou chose not to continue..." 

## writes to or creates a ~/.Xresources file to reflect curent cursor size. Need to do this when choosing not to change size and ~/.Xresources doesn't exist
	echo -e "\n\033[36mYou have enabled the \033[0m$CURSOR \033[36mcursor theme with size unchanged of \033[0m$CURRENTSIZE\033[36m \nYou need to log out to complete the change:\033[0m";
		if grep "Xcursor.size:" ~/.Xresources > /dev/null; then
			#echo "Xcursor.size line exists"
			sed -i "/Xcursor.size/c\Xcursor.size:${CURRENTSIZE}" ~/.Xresources
		else
			#echo "Xcursor.size line does not exist"
			echo "Xcursor.size:${CURRENTSIZE}" >> ~/.Xresources
		fi
	read -n 1 -p "Press any key to exit this script..."
exit
fi

## Choose size
	echo -e "\033[36mChoose your new cursor-size from 16, 24, 32, 48, or 64\033[36m"
	read SIZE

## Confirm choice
	echo -e "\n\033[36mYou have selected a cursor size of \033[0m$SIZE\nContinue?(Y/n):"
	read Ans
if [[ $Ans == "y" || $Ans == "Y" || $Ans == "yes" || $Ans == "Yes" || $Ans == "" ]]
	then
    	  echo 
	else
		echo -e "\nYou chose not to continue..."
	  	echo -e "\n\033[36mYou have enabled the \033[0m$CURSOR \033[36mcursor theme with size unchanged of \033[0m$CURRENTSIZE\033[36m \nYou need to log out to complete the change:\033[0m";
		echo
	        read -n 1 -p "Press any key to exit this script..."
exit
fi

## Edits dconf to reflect chosen size
gsettings set org.gnome.desktop.interface cursor-size $SIZE

## Creates a ~/.Xresources file or edits existing to reflect chosen size
if grep "Xcursor.size:" ~/.Xresources > /dev/null; then
	#echo "Xcursor.size line exists"
	sed -i "/Xcursor.size/c\Xcursor.size:${SIZE}" ~/.Xresources
else
	#echo "Xcursor.size line does not exist"
	echo "Xcursor.size:${SIZE}" >> ~/.Xresources
fi


echo -e "\n\033[36mYou have enabled the \033[0m$CURSOR \033[36mcursor theme of size \033[0m$SIZE\n\033[36mYou need to log out to complete the change:\033[0m";

echo
read -n 1 -p "Press any key to exit this script..."
