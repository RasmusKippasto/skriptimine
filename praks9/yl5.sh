#!/bin/bash

echo -n "Sisesta ridade arv: "; read read
reanum=1

for (( i = 1; i <= $read; i++ ))
do
	echo -n "$reanum."
	tarne=$(($read - $i))
	let reanum++
	for (( j = 1; j <= $tarne; j++ ))
	do
		echo -n "o "
	done
	for (( u = 1; u <= $i; u++))
	do
		echo -n "* "
	done
	echo ""
done
