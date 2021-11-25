#!/bin/bash

# Display your location in the filesystem
pwd

# Tests some commandes
echo "Shell script is awesome " > file.txt

cat file.txt | tr 'a-z' 'A-Z' > FILE.txt


# Define variables

# name=Superman
# bornOn="Crypton"
# AGE=167
# location='DC world'
# CHARACTERISTIC="strong"



# echo "
#     I am $name, I'm bon on ${bornOn} and I'm $AGE years old and I lived in $location 
#     and I'm the ${CHARACTERISTIC}est man in the DC world
# "


# # Enter your first name . First way
# read LAST_NAME
# echo "Hello Mr $LAST_NAME"


# # Enter your firstname. Second way
# read -p 'Enter the username to create: ' LAST_NAME
# echo "Hello $LAST_NAME"

 ARGS=2

 case $ARGS  in
 	1) # if ARGS=1
 		echo starting
 	;;
 	2) # if ARGS=2
 		echo stopping
 	;;
 	3) # if ARGS=2
 		echo restarting
 	;;
 	*)
 		echo don\'t know
 	;;
 esac



echo "${UID}"