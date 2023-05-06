for (( i=0; i<31; i++ )) ; do
	echo | awk -v var=$temp "{print ($i/10)+1.29}"
done
