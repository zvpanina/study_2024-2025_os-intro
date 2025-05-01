#!/bin/bash

if [ "$#" -lt 2 ]; then
    echo "Usage: $0 <extension> <directory>"
    exit 1
fi
EXTENSION="$1"
DIRECTORY="$2"
if [ ! -d "$DIRECTORY" ]; then
    echo "Error: $DIRECTORY is not a directory."
    exit 1
fi
COUNT=$(find "$DIRECTORY" -type f -name "*.$EXTENSION" | wc -l)
echo "Number of .$EXTENSION files in $DIRECTORY: $COUNT"#!/bin/bash
for A in *
do
    if test -d "$A"
    then
	echo "$A^ is a directory"
    else
	echo -n "$A: is a file and "
	if test -w $A
	then
	    echo writeable
	        if test -r $A
	        then
		    echo "readable"
	    else
		echo "neither readable nor writeable"
		fi
	    fi
	fi
done