#!/bin/bash
#Author:- Abhijeet Aher
##Note:- Please change source & destination path as per your requirement.

SPATH=/etc/samba/

DPATH=/root/DEC2016/


for i in `ls $SPATH`
do
        cd $SPATH

        /bin/cp $i $DPATH/$i-orig

        cd
done
