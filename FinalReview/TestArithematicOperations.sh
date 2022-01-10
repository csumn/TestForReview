#!/bin/bash -x


#ProblemStatement

#Enter 3 Numbers do following arithmetic operation and find the one that is maximum and minimum"
#1. a + b * c 3. c + a / b"
#2. a % b + c 4. a * b + c"




read -p "Enter First Number a " a
read -p "Enter Second Number b " b
read -p "Enter third Number c " c


Result1=$(( $a+$b*$c ))
echo $Result1

Result2=$(( $a%$b+$c ))
echo $Result2

Result3=$(( $c+($a/$b) ))
echo $Result3

Result4=$(( $a*$b+$c ))
echo $Result4


Maximum=$Result1

if [ $Result2 -gt $Maximum ]
then
	Maximum=$Result2
fi

if [ $Result3 -gt $Maximum ]
then
	Maximum=$Result3
fi

if [ $Result4 -gt $Maximum ]
then
	Maximum=$Result4
fi


echo "Maximum of above Arithematic Operations is :" $Maximum


Minimum=$Result1

if [ $Result2 -lt $Minimum ]
then
    Minimum=$Result2
fi

if [ $Result3 -lt $Minimum ]
then
    Minimum=$Result3
fi

if [ $Result4 -lt $Minimum ]
then
    Minimum=$Result4
fi

echo "Minimum of above Arithematic Operations is :" $Minimum
