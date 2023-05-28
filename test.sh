#!/bin/bash


path=$PWD

green="\e[0;32m"
red="\e[0;31m"
yellow="\e[0;33m"
white="\e[0m"

for tname in tasks/*
do
  echo -e "${yellow}Checking $tname:${white}"
  for iname in $tname/*
  do
    echo -e "Running $iname:"
    cd $iname
    make
    cd $path
  done
  echo -e "${yellow}Diffing $tname results:${red}"
  diff -q --from-file $tname/*/out.txt 
  if [ $? = 0 ]
  then
    echo -e "${green}All results are the same!"
  else
    exit -1
  fi
  printf ${white}
done
