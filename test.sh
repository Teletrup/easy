#!/bin/bash


path=$PWD

for tname in tasks/*
do
  echo "checking $tname:"
  for iname in $tname/*
  do
    echo "running $iname:"
    cd $iname
    make
    cd $path
  done
  echo "diffing $tname results:"
  diff -q --from-file $tname/*/out.txt 
done
