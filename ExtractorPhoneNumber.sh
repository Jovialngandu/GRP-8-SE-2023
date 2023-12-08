#!/usr/bin/bash
regex=^0[89][^6-8][0-9][0-9][0-9][0-9][0-9][0-9][0-9]
for n in $(cat $1)
do
echo -n "$n"> fichierExtractor

grep $regex  fichierExtractor
if [ $? -eq 0 ]
then
echo "$n"> f2  

fi

done

