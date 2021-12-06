#!/bin/bash

input="lines.txt"

timestamp()
{
	date +"%T"
}

declare -a array

while IFS= read -r line
do
	array+=("$line")
done < "$input"

for value in "${array[@]}"
do
	echo $value
	timestamp
done

#i cant get the update to github part to work correctly with my ssh key auhotized in github and all that junk
#git add test.log
#git commit -m "updating 'test.log'"
#git push origin main

