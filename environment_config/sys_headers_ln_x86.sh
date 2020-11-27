#!/bin/bash

# In Ubuntu 16.04, there isn't /usr/include/sys directory, so when you use vim
# to program with C language, it won't complete some header files, such as <sys/stat.h>.
# Because these header files are in /usr/include/x86_64-linux-gnu/sys directory, you have
# to mkdir /usr/include/sys directory and create links from these header files in it.
#
#    Notice: exec this script with root.

mkdir /usr/include/sys

DIR="/usr/include/i386-linux-gnu/sys"

cd $DIR

for FILE in *.h
do
    #echo $FILE
    LINK=/usr/include/sys/${FILE}
    ln -s ${DIR}/${FILE} $LINK
done

