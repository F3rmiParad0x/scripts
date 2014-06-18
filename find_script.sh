#!/bin/bash

starting_dir=~/tmp/test_script
found_dirs_arr=( $(find $starting_dir  -type d  -name "*[^a-zA-Z0-9 ]*" -printf "%p\n" ) )
excluded_dirs_arr=( "/home/tom/tmp/test_script" "/home/tom/tmp/test_script/client-test" "/home/tom/tmp/test_script/client-test2")

index=0
for i in "${found_dirs_arr[@]}"
	do
   	
   	for excludes in "${excluded_dirs_arr[@]}"
		do
			if [ "$excludes" == "$i" ]; then

				unset found_dirs_arr[$index]]
			fi
			
		done
	let index++
done


#Example 
#All dir matching pattern
echo 'All dir matching pattern'
find  $starting_dir -type d  -name "*[^a-zA-Z0-9 ]*" -printf "%p\n"
printf '\n\n'

#Dirs with the exluded_dirs_arr removed
echo 'Dirs with the exluded_dirs_arr removed'
printf '%s\n' ${found_dirs_arr[*]}




