#!/bin/bash

TRASH=$HOME
TRASH+="/.local/share/Trash/files"

if [ ! -e $TRASH ] 
then 
	mkdir $TRASH
fi

for file in $@
do
	FPATH="$PWD/$file"
	echo "$file deleted."
	mv $FPATH $TRASH	
done
