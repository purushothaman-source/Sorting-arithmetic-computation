#!/bin/bash 
read -p "enter a" a
read -p "enter b" b
read -p "enter c" c
number1=$((a+b*c))
number2=$((a*b+c))
number3=$((c+a/b))
number4=$((a%b+c))
values=( [0]=$number1 [1]=$number2 [2]=$number3 [3]=$number4 )
echo "Stored numbers in dictionary:${values[@]}"
for ((i = 0; i<${#values[@]}; i++))
do

        for((j = 0; j<${#values[@]}-i-1; j++))
        do

                if [[ ${values[j]} -gt ${values[$((j+1))]} ]]
                then
                        # swap
                        temp=${values[j]}
                        values[$j]=${values[$((j+1))]}
                        values[$((j+1))]=$temp
                fi
        done
done

echo "Array in decending order :"
dec[0]=${values[3]}
dec[1]=${values[2]}
dec[2]=${values[1]}
dec[3]=${values[0]}
echo ${dec[@]}
