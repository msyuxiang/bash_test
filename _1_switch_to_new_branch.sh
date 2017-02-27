#!/bin/bash
	
#new branch for pull request
echo "Please input a new branch name:"
read branchName
git checkout -b $branchName

if [ $? -ne 0 ]; then
	#echo "ERROE: specified branch already existed."	
	echo "Switch to "$branchName?"(y/n)"
	read switch_Y_N
	case $switch_Y_N in
		y)
			git checkout $branchName
			git branch
			exit
			;;
		n)
			echo "Delete "$branchName?"(y/n)"
			read delete_Y_N
			case $delete_Y_N in
				y)
					git branch -d $branchName
					git branch
					exit
					;;
				n)
					git branch
					exit
					;;
				*)
					git branch
					exit
					;;
			esac
			;;
		*)
			git branch
			exit
			;;
	esac
else
	git branch
fi