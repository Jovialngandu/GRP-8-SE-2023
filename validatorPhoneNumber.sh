#!/usr/bin/bash
echo "___validatorNumberPhone___"
reg=^0[89][^68][0-9][0-9][0-9][0-9][0-9][0-9][0-9]
#regex=`^0[89][^68][0-9]{7}`
for n in "$@"
do
echo -n "$n"> fichevalidatorNumberPhone
grep $reg  fichevalidatorNumberPhone
if [ $?  -eq 0 ] 
then
echo $n " est valide"
else
echo $n" n'est pas valide"
fi
done

