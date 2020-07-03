#!/bin/bash
# save results 
if [ -d "results" ]; then 
    sudo cp -a results/. savedResults/
fi
if [ -d "outputPath" ]; then 
    sudo cp -a outputPath/. savedResults/
fi

if ! [ $(id -u) = 0 ]; then
	echo "Not root! Reattempting as root..."
	sudo -n ${0}
	if [ $? = 1 ]; then
		echo "Root not available! Cannot flush memory. (To fix please add ${0} to sudoers file)"
	fi
else
	echo "Root! Flushing memory..."
    if [ -d "/proc/sys/vm/drop_caches" ]; then 
	   sudo sh -c "sync; echo 3 > /proc/sys/vm/drop_caches"
    fi 
fi
