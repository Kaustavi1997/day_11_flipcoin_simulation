#! /usr/local/bin/bash
declare -A tpltcnt
declare -A ht

ht[0]="T"
ht[1]="H"

read -p "enter flipping times:" n;

dbltcnt["HHH"]=0
dbltcnt["HHT"]=0
dbltcnt["HTH"]=0
dbltcnt["HTT"]=0
dbltcnt["TTT"]=0
dbltcnt["THT"]=0
dbltcnt["TTH"]=0
dbltcnt["THH"]=0


for (( i=0; i<n; i++ ))
do
	toss1=${ht[$((RANDOM%2))]};
	toss2=${ht[$((RANDOM%2))]};
	toss3=${ht[$((RANDOM%2))]};
	tplt=$toss1$toss2$toss3
	echo $tplt
	((tpltcnt[$tplt]++))
done

for key in "${!tpltcnt[@]}"
do
	g=$(echo "${tpltcnt[${key}]} / $n" | bc -l );
	percentage=$(echo "$g * 100" | bc -l );
	echo "${key}" "${tltcnt[${key}]}"
	echo $percentage
done



