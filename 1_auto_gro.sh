#!usr/bin/env bash
DIR=/home/junlin/documents/mcl1/67-umbrella-peptide/umbrella_peptide_2/
for (( i=0; i<31; i++ )) ; do
    mkdir window_${i}
    cd window_${i}
    echo 0 | gmx_mpi trjconv -f ../pull_peptide_2.xtc -s ../pull_peptide_2018.tpr -b $((i*10000)) -e $((i*10000)) -o window_${i}.gro -n ../index_updated.ndx
    cd ..
done

