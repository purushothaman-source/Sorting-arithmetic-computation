#!/bin/bash
read -p "enter a" a
read -p "enter b" b
read -p "enter c" c
number=$((c+a/b))
echo "Number:$number"
