#!/bin/bash

echo "Hello World"

# variable
phrase="Hello to you!"
echo $phrase
echo "----------"

# conditionals
first_greeting="Nice to meet you!"
later_greeting="How are you?"
greeting_occasion=0

if [ $greeting_occasion -lt 0 ]
then 
  echo $first_greeting
else
  echo $later_greeting
fi
echo "----------"
# loops & user input
greeting_occasion=0
echo "How many times should I greet?"
read greeting_limit
while [ $greeting_occasion -lt $greeting_limit ]
do
  if [ $greeting_occasion -lt 1 ]
  then
    echo $first_greeting
  else
    echo $later_greeting
  fi
  greeting_occasion=$((greeting_occasion + 1))
done

# aliases
alias greet3="./script.sh"   # greet3 is equivalent to ./script.sh