#!/bin/bash

function traverse() {
	for file in "$1"/*
	do
		if [ ! -d "${file}" ] ; then
			echo "${file} is a file"
		else
			#echo "enter recursion with ${file}"
			traverse "${file}"
		fi
	done
}

function main() {
	traverse "$1"
}

main "$1"
