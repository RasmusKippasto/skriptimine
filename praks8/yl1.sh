#!/bin/bash

echo -n "Sisesta number mille piires liidetakse paaris arvud: "; read arvu
summa=0

for ((arv=1; arv<=$arvu; arv++ ))
do
	jaak=$(($arv % 2))
	if [ $jaak == 0 ]; then
		summa=$(($summa + $arv))
		echo $summa
	fi
done
echo "Arvud vahemikus 1 kuni $arvu (kaasaarvatud) paarisarvude summa on: $summa"
