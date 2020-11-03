#!/bin/bash 
# script to find average of student marksstored in marks.txt
BEGIN{ var=0 }
{
	var=($2+$3+$4+$5+$6);
	var=var/5;
	print $1 " average marks is", var ;
 }
END{print DONE }

