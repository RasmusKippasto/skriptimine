#!/bin/bash

echo -n "Sisesta ridade arv: "; read read
echo -n "Sisesta tarnide arv reas: "; read tarnid
reanum=1

for (( i = 1; i <= $read; i++ ))
do
	echo -n "$reanum."
	let reanum++
	for (( j = 1; j <= $tarnid; j++ ))
	do
		echo -n "* "
	done
	echo ""
done
