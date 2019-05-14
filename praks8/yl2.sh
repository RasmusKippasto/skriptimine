#!/bin/bash

echo -n "Sisesta suvaline tais arv: "; read arv
sum=0

while [ $arv != 0 ]
do
	num=$(($arv % 10))
	sum=$(($sum + $num))
	arv=$(($arv / 10))
done
echo $sum
