#!/bin/bash

##remoteでgithubからリポジトリをプルする##

#githubリポジトリを指定する
echo "Please input github username:"
read username
echo "Please input github repositoryname:"
read repositoryname
git clone https://github.com/$username/$repositoryname

if [ $? -ne 0 ]; then
	echo "Clone ERROE!"
	exit 0
else
	echo "Clone Done!"
fi



