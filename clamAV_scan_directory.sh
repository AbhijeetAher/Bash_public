#!/bin/bash
#Author:- Abhijeet Aher
#Purpose:- It will scan the directories

#SCAN_DIR1="/log"
SCAN_DIR2="/var/log"
#SCAN_DIR3="/home/hdfc.admin"
SCAN_DIR4="/tmp"
LOG_FILE="/var/log/clamav/manual_clamscan.log"
#/usr/bin/clamscan -i -r $SCAN_DIR1 >> $LOG_FILE
/usr/bin/clamscan -i -r $SCAN_DIR2 >> $LOG_FILE
#/usr/bin/clamscan -i -r $SCAN_DIR3 >> $LOG_FILE
/usr/bin/clamscan -i -r $SCAN_DIR4 >> $LOG_FILE

