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
cp /etc/passwd ~/$dirname
echo "File passwd has been copied to new directory" "${dirname}"
