#!/bin/bash

echo $b
echo -n "Sisesta oma nimi: "; read name
echo "Tere tulemast, $name!"

echo -n "Sisesta oma sünniaasta: "; read birthYear
echo -n "Kas selle aasta sünnipäev on möödunud(y/n): "; read birthday

currentYear=$(date +"%Y")

years_old=$(($currentYear - $birthYear))
if [ $birthday == "n" ]; then
	let years_old--
fi
echo "$name, sina oled $years_old aastat vana."
