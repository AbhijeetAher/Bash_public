#!/bin/bash
#Author- Abhijeet Aher
#Purpose- Take incremental direcory backup interactively.

read -p "Enter source directory: " source_file1

if [ -d $source_file1 ]
then

        read -p "Enter destination directory path: " Dest_dir1


        if [ -d $Dest_dir1 ]
        then

                rsync -par $source_file1 $Dest_dir1
               
        else

                echo " $Dest_dir1 directory is not exist"

        fi
else

        echo " $source_file1 file/dir is not exist"

fi
