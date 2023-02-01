#!/bin/bash


for i in `ls $1`
do
 if [ -x $i ]; then
  let "exec= $exec+1"
  echo $i >> list_exe.txt
 else
  let "no_exec = $no_exec+1"
  echo $i >> list_no_exe.txt
 fi
done
