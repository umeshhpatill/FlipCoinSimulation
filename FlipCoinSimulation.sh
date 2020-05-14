#!/bin/bash -x

heads=0
tails=0

flipCoin() {
	result=$((RANDOM % 2))
        if [ $result -eq 0 ]
        then
                $((tails++))
        else
                $((heads++))
        fi
}

while [ $tails -le 21 -o $heads -le 21 ]
do
	flipCoin
done

if [$heads -eq $tails ]
then
	while [ $(($heads - $tails)) -ne 2 -o $(($tails - $heads)) -ne 2 ]
	do
		flipCoin
	done
elif [ $heads -gt $tails ]
then
	echo "Heads Wins !"
elif [ $heads -lt $tails ]
then
	echo "Tails Wins !"
fi
