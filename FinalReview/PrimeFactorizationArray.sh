#!/bin/bash -x

#echo "Enter a Number:"
#read number

read -p "Enter a number: " number
for (( counter=2;  counter<=$(($number/2));  counter++ ))
do

   while [  $(($number%$counter)) -eq 0 ]
   do

      echo "$counter "
		Array[$i]=$counter
      number=$(($number/$counter))
      i=$(($i+1))
		done
done

echo "${Array[@]}"



