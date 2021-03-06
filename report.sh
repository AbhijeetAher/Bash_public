#!/bin/bash
#Author:- Abhijeet Aher
#Purpose:- This will fetch total processors, disk & memory utilization of the system

line="========================="
date_var=$(date +%F-%H:%M)
echo "System report for $(hostname)"
echo $date_var
echo $line

total_cpu_core=$(grep -c processor /proc/cpuinfo)
Disk_Utilization=$(df -h / | awk '/sda1/{print $5}')
Mem_Utilization=$(free -m | awk '/Mem/{print $2, MB}')

echo "CPU Cores : $total_cpu_core"
echo $line

echo "Memory : $Mem_Utilization"
echo $line

echo "Memory : $Disk_Utilization"
echo $line
