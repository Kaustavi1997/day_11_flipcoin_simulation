#! /usr/local/bin/bash
declare -A dbltcnt
declare -A ht

ht[0]="T"
ht[1]="H"

read -p "enter flipping times:" n;

dbltcnt["HH"]=0
dbltcnt["HT"]=0
dbltcnt["TH"]=0
dbltcnt["TT"]=0


for (( i=0; i<n; i++ ))
do
	toss1=${ht[$((RANDOM%2))]};
	toss2=${ht[$((RANDOM%2))]};
	dblt=$toss1$toss2
	echo $dblt
	((dbltcnt[$dblt]++))
done

for key in "${!dbltcnt[@]}"
do
	g=$(echo "${dbltcnt[${key}]} / $n" | bc -l );
	percentage=$(echo "$g * 100" | bc -l );
	echo "${key}" "${dbltcnt[${key}]}"
	echo $percentage
done



