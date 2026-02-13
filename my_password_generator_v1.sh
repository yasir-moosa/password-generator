#!/bin/bash

#Simple Password Generator

echo "This is a simple password generator"
echo "Please enter the length of the password: "
read PASS_LENGTH
echo "Please enter the number of passwords you want to generate: "
read PASS_QUANTITY

for x in $(seq 1 $PASS_QUANTITY);
do 
	openssl rand -base64 48 | cut -c1-$PASS_LENGTH 

done
