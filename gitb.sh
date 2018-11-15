#!/bin/bash

####
ZZZZ
echo "input:" $1 $2 "$3"
optionstr="$1"
if [ -n "$2" ];
then
  optiontstr=$optionstr" $2"
fi

for sub in `ls |grep -v hc`
do
  if [ -d $sub ]
  then
    echo $sub
    git -C $PWD/$sub $1 $2 
    echo "------------------------------------------"
  fi
done
