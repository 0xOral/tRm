#!/bin/bash

TRASH="~/.local/share/Trash/files"

for file in $@
do
	FPATH="$PWD/$file"
	echo "$file deleted."
	mv $FPATH $TRASH	
done
