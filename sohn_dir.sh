#!/bin/bash

#script determines if a file is or is not a directory

function traverse() {	
	lst=`ls $1`

	for x in $lst; do
		echo "$1/$x"
		if [ -d "$lst/$x" ] ; then
			traverse "$1/$x"
		fi
	done
}

function main() {
	local d=$1
	if [ -z "$d" ] ; then
		traverse . 0
	else
		traverse "$d" 0
	fi
}

main $1
