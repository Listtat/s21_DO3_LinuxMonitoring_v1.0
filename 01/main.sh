#!/bin/bash

if [[ -n $1 ]]
then
  if [[ -n $2 ]]
  then
    echo "Too much parameters"
  else
    reg="^[+-]?[0-9]+([.][0-9]+)?$"

    if ! [[ $1 =~ $reg ]]
    then
       echo $1
    else
      echo "Incorrect input: string expected"
    fi
  fi
else
  echo "No parameters found"
fi