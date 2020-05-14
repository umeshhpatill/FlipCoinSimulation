#!/bin/bash -x

read -p "Enter Times to flip: " num
heads=0
tails=0
count=0
while [ $count -ne $num ]
do
	$((count++))
	result=$((RANDOM % 2))
	if [ $result -eq 0 ]
	then
		$((tails++))
	else
		$((heads++))
	fi
done
echo "Heads: " $heads
echo "Tails: " $tails
