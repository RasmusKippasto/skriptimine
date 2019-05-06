#!/bin/bash

echo -n "Millist kaustast soovite backupi: "; read kaust
asukoht="/home/user/skriptimine/praks4a/backup/"
fail=$(echo $kaust | awk -F/ '{print $NF}')
date=$(date +"%Y-%m-%d")
host=$(hostname -s)

tar -czf $fail.tar.gz $fail
mv $fail.tar.gz $asukoht/$date-$host-$fail.tar.gz

echo "Fail $fail on pakitud asukohta $asukoht nime all $date-$host-$fail.tar.gz"
