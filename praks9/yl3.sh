#!/bin/bash

echo -n "Sisesta ridade arv: "; read ridu
echo -n "Sisesta tarnide arv reas: "; read tarnid
reanum=1

for (( i = 1; i <= $ridu; i++ ))
do
	echo -n "$reanum."
	let reanum++
	for (( j = 1; j <= $tarnid; j++ ))
	do
		if (($i == 1 || $i == $ridu)); then
			echo -n "* "
		elif (($j == 1 || $j == $tarnid)); then
			echo -n "* "
		else
			echo -n "  "
		fi
	done
	echo ""
done
