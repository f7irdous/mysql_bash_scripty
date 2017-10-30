#!/bin/bash
##############################################################################################################
# Author 			::    	Mohamed Firdous
# Description		::    	Programatically runs all mySQL script files in a given folder
# Instructions 		::    	1. Provide root pass at line #15 (Eg: "-pPassword123") and Save this script file
#						  	2. Run "chmod u+x batch_sql_exec.sh" in terminal to make this script executable
#                         	3. Copy/Move this script file inside the folder with mySQL script files
#						  	4. Run this script in terminal using "sudo ./batch_sql_exec.sh"
# Date 				::		2017-10-30
##############################################################################################################

for currentFile in *.sql
  do
   echo "Processing $currentFile ..."
   mysql -u root "-p<root_pass>" -h localhost <database_name> < "$currentFile"
done