#!/bin/bash

read -p "Entrez votre mail : " email
#Verification de format de l'adresse email
echo $email > test 
grep -E  "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.]+\.[a-zA-Z.]{3,15}$" test
if [ $? -eq 0 ]; then
	echo "l'adresse est corect."
else
  	echo "desole l'adresse n'est pas corect."
fi
