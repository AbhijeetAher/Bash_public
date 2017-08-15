#!/bin/bash
#Author:- Abhijeet Aher


current_scsi_host1=`ls -1 /sys/class/scsi_host`	##Here is ls -1(numeric one)- Logic 2
for i in $current_scsi_host1
do
        echo "- - -" > /sys/class/scsi_host/$i/scan
                if [ $? == 0 ]
                then
                        echo "/sys/class/scsi_host/$i scanned successfully"
                else
                        echo "/sys/class/scsi_host/$i scanning failed"
                fi
done
