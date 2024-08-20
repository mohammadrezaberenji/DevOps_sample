#!/bin/bash

# This is script is a sample test to pring ip loss packet in ping


all_val="$@"

ping_command=" ping -c 3 "

for var in "$@"
do
	ping_stored_val=$(ping	-c 3 $var)
       	IFS=","
	array=( $ping_stored_val )
	echo " ip is : $var "
	echo " paccket loss is ${array[2]} "	
done 

