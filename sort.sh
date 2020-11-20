#!/bin/bash
read -p "enter a" a
read -p "enter b" b
read -p "enter c" c
number=$(echo $a $b $c |awk '{ print $3+$1/$2}')
echo "Number:$number"
