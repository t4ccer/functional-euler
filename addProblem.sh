#!/bin/sh

if [ "$1" = "" ]; then
  echo "usage: addProblem.sh <problemNumber>"
else
  echo -e "module Problems.Problem$1 (problem$1) where\n\nimport Lib\n\nproblem$1 = 42" >> src/Problems/Problem$1.hs
fi
