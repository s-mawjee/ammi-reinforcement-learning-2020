#!/bin/bash
comment_1=$1
comment_2=$2

git pull
git add -A

if [[ -n $comment_1 ]]; then
	git commit -m "${comment_1}" #Titel
elif [[ -n $comment_2 ]]; then
		git commit -m "${comment_1}" -m "${comment_2}" #Titel and Description 
	else 
		git commit -m "increment" #defualt commit message
	fi

git push
