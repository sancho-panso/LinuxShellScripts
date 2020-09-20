#!/bin/sh
#Name length calculation
echo "Hello Dear, please enter your name:"
read myvar
chrlen=${#myvar}
oLang=$LANG oLcAll=$LC_ALL
LANG=C LC_ALL=C
bytlen=${#myvar}
LANG=$oLang LC_ALL=$oLcAll
printf "%s is %d char len, and  %d bytes len.\n" "${myvar}" $chrlen $bytlen
#Directory creation
echo "Enter directory name:"
read dirname
if [ ! -d "$dirname" ]
then
    echo "Directory doesn't exist. Creating now"
    mkdir ./$dirname
    echo "Directory created"
else
    echo "Ups, directory with such name already exists"
fi
#copy passwd file to new created folder
echo "Enter file name to copy:"
read filename
if [ ! -f /etc/"$filename"  ]
then
    echo "File doesn't exist. Can not copy"
else
	cp /etc/$filename ~/$dirname
    echo "${filename}"" file has been copied to new directory ""${dirname}"
fi
