#!/bin/bash
# for i in {1..250}; do mkdir -p $i;cd $i; mktemp ./XXXXXXX.txt 2>/dev/null;cp -r ../ . 2>/dev/null;done
# set -e doesn't work # disable exit on error (b/c the cp step generates errors, copying the dir into itself
cd /home/godeep
for i in {1..250}
do
	# printf "making dir $i\n"
	mkdir -p $i
	# printf "cding to dir\n"
	cd $i
	# printf "mktemping\n"
	mktemp ./XXXXXXX.txt 2>/dev/null
	# printf "copying parent dirs into newly made dir\n"
	# cp -r ../ . 2>/dev/null
done


# /home/godeep
# mkdir 1
# cd 1 # /home/godeep/1
# mktemp lrjqlj.txt
# cp -r ../ . # copies everything in /home/godeep
