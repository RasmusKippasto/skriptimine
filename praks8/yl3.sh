#!/bin/bash

echo -n "Sisesta kuu number(1-12): "; read kuu
kuud=(jaanuar veebruar marts aprill mai juuni juuli august september oktoober november detsember)
praegunekuu=${kuud[$(($kuu -1))]}
echo "See on $praegunekuu"
