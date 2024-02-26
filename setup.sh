#!/bin/bash

# TRASH=$HOME
# TRASH+="/.local/share/Trash/files"

# printf "alias with rm? (y/n): "
# read -n 1 ans

# if [ $ans == "y" ] || [ $ans == "Y" ]
# then
# 	# alias rm="trash"
# 	echo -e "\e[32mnow you can use rm as trash" 
# fi

# if [ ! -e $TRASH ] 
# then 
# 	mkdir $TRASH
# 	echo -e "\e[36mNew trash in $TRASH"
# fi

printf "add service to remove trash every month?"
read -n 1 ans
if [ $ans == "y" ] || [ $ans == "Y" ] 
then 
	echo "
	#!/bin/bash
	TRASH=$HOME
	TRASH+="/.local/share/Trash/files/*"
	rm -rf "$TRASH"
	" > TRMSER.sh
else 
	echo -e "\n\e[31mThe Trash will NOT deleted EVER."
fi


