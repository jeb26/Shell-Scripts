#! /bin/bash
#Shell Script that will append some data to all files in a directory tree

path="/storage/prog/scripting/tree"
text="processed!"

for dir in `ls $path`
do
	echo "current directory is: $dir"

	for file in `ls $path/$dir`
		do
			echo "processed!" >> $path/$dir/$file
		done
done
