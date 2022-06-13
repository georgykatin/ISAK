#!/bin/bash

while read a ; do
sleep 5 ; 
echo "$a" ; 
sleep 5 ;
date ; 
done >"$2" <"$1" & pa=$! ; 
while sleep 7 ; do 
cat "$2" ; 
done & pb=$! ;
while read x ; [ m"$x" != mquit ] ; do : ;
done ;
kill $pa ; kill $pb ; rm "$2"
