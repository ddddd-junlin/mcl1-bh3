#!/usr/bin/env bash
DIR=/home/junlin/documents/mcl1/67-umbrella-peptide/umbrella_peptide_2
num=0
for i in `cat dist.dat`; do
	echo ${i}
	cd window_${num}
	sed -e "s/CMD/${i}/g" ../umbrella_standard.mdp > window_${num}.mdp
        num=$(($num+1)) 
        cd ..	
done
