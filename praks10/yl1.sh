#!/bin/bash
read -p "Kasutaja nimi: " nimi
read -p "Kasutaja grup(opilane/opetaja): " grup


w='[a-zA-Z.]'
loop=1
while [[ $loop == 1 ]]
do
	if [[ "$nimi" =~ $w ]];then
		loop=0
	else
		echo "Kasutaja nimi ei sobinud"
		read -p "Kasutaja nimi: " nimi
	fi
done


loop=1
while [[ $grup != 'opetaja' || $grup != "opilane" ]]
do
	echo "Sisestatud gruppi ei leitud"
	read -p "Kasutaja grup(opilane/opetaja): " grup
done

passwd=""
for (( a=1; a<= 9; a++ ))
do
	lower=$(echo {a..z} | tr -d ' ')
	upper=$(echo {A..Z} | tr -d ' ')
	valija=$((RANDOM%26))
	valija2=$((RANDOM%3))
	valik[0]=${lower:valija:1}
	valik[1]=${upper:valija:1}
	valik[2]=$((RANDOM%10))
	valitud=${valik[$valija2]}
	passwd=$passwd$valitud
done

#sudo adduser $nimi --gecos "$nimi,,," --disabled-password
#echo "$nimi:$passwd" | sudo chpasswd
