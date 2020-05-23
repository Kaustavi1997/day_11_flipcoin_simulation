#! /usr/local/bin/bash
declare -A singtcnt
declare -A ht

ht[0]="T"
ht[1]="H"

read -p "enter flipping times:" n;

singtcnt["H"]=0
singtcnt["H"]=0



for (( i=0; i<n; i++ ))
do
	toss1=${ht[$((RANDOM%2))]};
	
	singlt=$toss1
	echo $singlt
	((singtcnt[$singlt]++))
done

for key in "${!singtcnt[@]}"
do
	g=$(echo "${singtcnt[${key}]} / $n" | bc -l );
	percentage=$(echo "$g * 100" | bc -l );
	echo "${key}" "${singtcnt[${key}]}"
	echo $percentage
done



