#!/bin/bash

comguess=$(( ($RANDOM % 3) + 1 ))
rps=(no rock paper scissors)

declare -a rps;
comguess=$(( ($RANDOM % 3) + 1 ))
echo "The computer chose ${rps[$comguess]}"

echo -n "Please choose (1 = rock / 2 = paper / 3 = scissors): "
read choice


   echo ""
   if [ $choice = $comguess ] ;
 then
    echo " TIED!"

   elif [ $choice -eq 1 ] && [ $comguess -eq 3 ]
 then
     echo " your rock won "
     wins=$(( $wins + 1 ))
   elif [ $choice -eq 2 ] && [ $comguess -eq 1 ]
 then
     echo "your paper won"
     wins=$(( $wins + 1 ))
   elif [ $choice -eq 3 ] && [ $comguess -eq 2 ]
then
     echo -n "Your scissors cut - and beat - the computer paper "
     wins=$(( $wins + 1 ))
   elif [ $choice -eq 3 ] && [ $comguess -eq 1 ]
 then
     echo " computer rock won"

   elif [ $choice -eq 1 ] && [ $comguess -eq 2 ]
 then
     echo " computer paper won "

   elif [ $choice -eq 2 ] && [ $comguess-eq 3 ]
 then
     echo -n "The computer's scissors cut - and beat your paper "
   else
     echo " choice=$choice and comguess=$computer"
   fi
