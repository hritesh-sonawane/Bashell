#!/bin/bash
echo "Welcome agent"

firstline=$(head -n1 ./source/changelog.md)
read -a splitfirstline <<< $firstline
version=${splitfirstline[1]}

echo $version
echo "Enter 1 to continue, 0 to exit"

read versioncontinue
if [ $versioncontinue -eq 1 ]
then
	files=source/*
	for file in $files
  do
  	if [ $file == "source/secretinfo.md" ]
    then
    	echo "$file Not copied"
    else
    	echo "$file being copied"
      cp $file build/
    fi
  done
  cd build/
  echo "Build version $version contains:"
	ls
  cd ..
else
	echo 'Please come back when you are ready'
fi