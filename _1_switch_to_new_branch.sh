#!/bin/bash
	
#new branch for pull request
echo "Please input a new branch name:"
read branchName
git checkout -b $branchName

if [ $? -ne 0 ]; then
	#echo "ERROE: specified branch already existed."	
	echo "Still switch to "$branchName?"(y/n)"
	read Y_N
	case $Y_N in
		y)
			git checkout $branchName
			git branch
			exit
			;;
		n)
			#echo "Now you are in the following branch:"
			git branch
			exit
			;;
		*)
			git branch
			exit
			;;
	esac
else
	git branch
fi