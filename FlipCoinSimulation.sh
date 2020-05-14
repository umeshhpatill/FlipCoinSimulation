#!/bin/bash -x

heads=0
tails=0
while [ $tails -le 21 -o $heads -le 21 ]
do
	result=$((RANDOM % 2))
	if [ $result -eq 0 ]
	then
		$((tails++))
	else
		$((heads++))
	fi
done

if [$heads -eq $tails ]
then
	echo "Its a tie !"
elif [ $heads -gt $tails ]
then
	echo "Heads Wins !"
elif [ $heads -lt $tails ]
then
	echo "Tails Wins !"
fi
