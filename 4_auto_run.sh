#!/usr/bin/env bash
for (( i=0; i<31; i++ )) ; do
        cd window_${i}
	gmx_mpi grompp -f window_${i}.mdp -c window_${i}.gro -r window_${i}.gro -o window_${i}.tpr -n ../index_updated.ndx -p ../topol.top
        gmx_mpi mdrun -deffnm window_${i} -s window_${i}.tpr -gpu_id 0 -ntomp 10
        cd ..
done

