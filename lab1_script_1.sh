#!/usr/bin/bash

############################################################################
#                                                                          #
#  Zip Assignment Submission Tool                                          #
#                                                                          #
#  Name: lab1_scipt_1.sh                                                   #
#                                                                          #
#  Written By: Brianna Drew                                                #
#                                                                          #
#  Date Created: January 15th, 2020                                        #
#                                                                          #
#  Last Modified: January 29th, 2020                                       #
#                                                                          #
#  Usage: ./lab1_scipt_1.sh $Last Name $First Name $Lab Number $Lab Folder #
#         (e.g. ./lab1_script_2.sh Drew Brianna 1 lab1)                    #
#                                                                          #
#  Purpose: Generate formatted zip file name and then zip specified files  #
#           to specified directory using that name.                        #
#                                                                          #
#  Description of Parameters:                                              #
#     - $1 ~ user's last name (1st letters capitalized)                    #
#     - $2 ~ user's first name (1st letters capitalized)                   #
#     - $3 ~ number representing lab (numeric)                             #
#     - $4 ~ name of folder containing files to be zipped                  #
#                                                                          #
############################################################################

# uses 3 parameters to store formatted zip file name in ZIPNAME variable
ZIPNAME="${1}_${2}_LAB(${3}).zip"

# print zip file name
echo "Your zip file name is: $ZIPNAME"

# zip files in given directory ($4) to home directory
zip $HOME/$ZIPNAME $HOME/$4/*
