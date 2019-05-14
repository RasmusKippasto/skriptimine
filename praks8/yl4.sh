#!/bin/bash

echo -n "Sisesta positiiven tais arv: "; read arv
match=0

for (( num=1; num<=$arv; num++ ))
do
	jaak=$(($arv % $num))
	if [ $jaak == 0 ]; then
		let match++
	fi
done

if (( $match <= 2 ));then
	echo "$arv - on algarv"
else
	echo "$arv - ei ole algarv"
fi
