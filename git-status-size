#!/bin/bash

function c () {
    local a
    (( $# > 0 )) && a="$@" || read -r -p "calc: " a
    bc -l <<< "$a"
}
function round()
{
  echo $(printf %.$2f $(echo "scale=$2;(((10^$2)*$1)+0.5)/(10^$2)" | bc))
};

function get_size (){
  var=$(stat -c%s "$2")
  mb=$(bc <<< 'scale=2; '$var'/1000000')

  #Colors

  RED=`tput setaf 1`
  GREEN=`tput setaf 2`
  NC=`tput sgr0`
  # RED='\033[0;31m'
  # GREEN='\033[0;32m'
  # NC='\033[0m'

  if [[ $1 == "M" ]]
  then
    echo "${RED}Modified${NC}: $2 - $mb mb"
  fi
  if [[ $1 == "A" ]]
  then
    echo "${GREEN}Added${NC}: $2 - $mb mb"
  fi
  if [[ $1 == "??" ]]
  then
    echo "${RED}Untracked${NC}: $2 - $mb mb"
  fi
}

echo "----"
mapfile -t git_status_files < <( git status -s )

tLen=${#git_status_files[@]}

for (( i=0; i<${tLen}; i++ ));
do
  get_size ${git_status_files[$i]}
done
echo "----"
