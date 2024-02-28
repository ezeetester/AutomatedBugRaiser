################ Author: Guruprasad B. Gopinath ################################

#!/bin/sh




mkdir -p testfolder
cd testfolder
TS=$(date)
echo $TS > abc.txt
TSM=$(sed 's/ /-/g' abc.txt)
#echo $TSM
touch docfile$TSM.txt

echo "The OS " $(lsb_release -d) > docfile$TSM.txt

firefox -v >> docfile$TSM.txt
echo "The user name is: " $(whoami) >> docfile$TSM.txt
echo "The kernel version is: "$(uname -a | awk '{print $3}') >> docfile$TSM.txt
echo "The architecture is: "$(uname -a | awk '{print $13}') >> docfile$TSM.txt
	if [ $(cat /sys/block/sda/queue/rotational) -eq 1 ]; then
		echo "The system has an HDD" >> docfile$TSM.txt
	fi
	if [ $(cat /sys/block/sda/queue/rotational) -eq 0 ]; then
        	 echo "The system has an SSD" >> docfile$TSM.txt
	fi	 
	echo " Starting screen recorder.... press Ctrl+C when done"
	recordmydesktop --no-sound --on-the-fly-encoding
 #	else
#		echo "Unable to determine if device is SSD or HDD" >> docfile$TSM.txt 	
#	fi
	
#byzanz-record --duration=30 >> video$TSM.webm
