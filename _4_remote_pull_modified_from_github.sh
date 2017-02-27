#!/bin/bash

##remoteでgithubからリポジトリをプルする##
#pullする
git pull origin master

if [ $? -ne 0 ]; then
	echo "PULL ERROE!"
	exit 0
else
	echo "Pull Done!"
fi


