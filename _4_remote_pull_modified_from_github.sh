#!/bin/bash

##remoteでgithubからリポジトリをプルする##

#current path
unset GIT_DIR
nowPath=`pwd`
echo "The current path is: "$nowPath

#get into repository　path
echo "Please input local repository path"
read local_rep_path
cd $local_rep_path

#このリポジトリPathがないなら、exit
if [ $? -ne 0 ]; then
	echo "ERROE: specified repository　Path is not valid."
	exit 0;
else 

	#pullする
	git pull origin master
	
	if [ $? -ne 0 ]; then
		echo "PULL ERROE!"
		exit 0;
	else
		echo "Pull Done!"
	fi

fi

#go back to current path
cd $nowPath
exit 0


