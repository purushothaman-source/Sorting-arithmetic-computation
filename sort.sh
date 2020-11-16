#!/bin/bash 
i=0
read -p "enter a" a
read -p "enter b" b
read -p "enter c" c
number1=$((a+b*c))
number2=$((a*b+c))
number3=$((c+a/b))
number4=$((a%b+c))
declare -A  values=( [0]=$number1 [1]=$number2 [2]=$number3 [3]=$number4 )
echo "Stored numbers in dictionary:${values[@]}"
for key in "${!values[@]}"
do
    
        arr[i]="${values[$key]}"
       ((i++))
done
echo "stored in array :${arr[@]}"

