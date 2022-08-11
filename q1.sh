#!/bin/bash

x=$(awk -F "/" '{print $NF}' $1)

n=$(awk 'END{print NR}' $1)

new=$((n/2))
if [ $((n%2)) == 1 ]
then
	new=$((new+1))
fi
awk -v line="$new" '{if(NR == line) print}' $1 	
