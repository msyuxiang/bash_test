#!/bin/bash

### Git command
function GitContinue(){
    case $1 in
		y)
			return 1
			;;
		n)
			return 0
			;;
		*)
			echo "Please Input 'y' or 'n' for continue."
			read Y_N
			GitContinue $Y_N
			;;
	esac
}

##ローカルで修正したファイルをgithubにpush requestする##

git status
echo "01. git Add? (y/n)"
read add_Y_N
if GitContinue $add_Y_N; then
	echo "YOU QUITE ADD!"
	exit 0
else
	#echo "git add:"
	git add .
fi

#git status
echo "02.git commit? (y/n)"
read commit_Y_N
if GitContinue $commit_Y_N; then
	echo "YOU QUITE commit!"
	exit 0
else
	#commitする
	echo "Please input a summary for the commit:"
	read summary
	git commit -m "$summary"
fi

echo "03.Push request? (y/n)"
read push_Y_N

if GitContinue $push_Y_N; then
	echo "YOU QUITE PUSH!"
	exit 0
else	
	echo "Please input the Current Branch Name for push request:"
	read branch_name
	git push origin $branch_name
	
	if [ $? -ne 0 ]; then
		echo "PUSH ERROE!"
		exit 0
	else
		echo "Push Request Done!"
	fi
fi





