#!/bin/bash



read -p "Enter the first number" number_one
read -p "Enter the second number" number_two

if [ $number_one -gt $number_two ];then
	echo "$number_one is larger"
else
	echo "$number_two is larger"
fi
