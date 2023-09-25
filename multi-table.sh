#!/bin/sh


if [ $# -ne 2 ]
then 
	echo "Invalid input"
	exit 0

fi

rows=$1
cols=$2


if [ $rows -le 0 -o  $cols -le 0 ]
then 
	echo "Input must be greater than 0"
	exit 0
fi

for i in $(seq 1 $rows) 
do
	for j in $(seq 1 $cols)
	do

		printf "%d*%d=%d\t" $i $j $(expr $i '*' $j)
	done
	printf "\n"
done
exit 0
