#!/bin/bash

echo -n "Sisesta ridade arv: "; read read
reanum=1

for (( i = 1; i <= $read; i++ ))
do
	echo -n "$reanum."
	tarne=$(($read + 1 - $i))
	let reanum++
	for (( j = 1; j <= $tarne; j++ ))
	do
		echo -n "* "
	done
	echo ""
done
