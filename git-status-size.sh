#!/bin/bash

mapfile -t git_status_files < <( git status -s )

tLen=${#git_status_files[@]}

for (( i=0; i<${tLen}; i++ ));
do
  if
  echo ${git_status_files[$i]:0:2}
done
