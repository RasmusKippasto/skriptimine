#!/bin/bash

row=1
for (( i = 1; i <= 5; i++ ))
do
	echo -n "$row."
	let row++
	for (( j = 1; j <= 5; j++ ))
	do
		echo -n "* "
	done
	echo ""
done
