#!/bin/bash
read -p "enter a" a
read -p "enter b" b
read -p "enter c" c
number=$((a%b+c))
echo "Number:$number"
