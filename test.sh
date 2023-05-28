#!/bin/bash


path=$PWD

run_lisp() {
  sbcl --script main.lisp
}
export -f run_lisp

run_python() {
  python main.py
}
export -f run_python

run_node() {
  node main.js
}
export -f run_node

for tname in tasks/*
do
  echo "checking $tname:"
  for iname in $tname/*
  do
    echo "running $iname:"
    cd $iname
    #./run.sh
    make
    cd $path
  done
  diff -q --from-file $tname/*/out.txt 
done
