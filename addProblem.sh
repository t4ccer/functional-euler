#!/bin/sh

if [ "$1" = "" ]; then
  echo "usage: addProblem.sh <problemNumber>"
else
  sed -i "s/-- INSERT_CALL/-- INSERT_CALL\n  solve \"Problem $1\" problem$1/" app/Main.hs
  sed -i "s/-- INSERT_IMP/import Problems.Problem$1\n-- INSERT_IMP/" app/Main.hs
  echo -e "module Problems.Problem$1 (problem$1) where\n\nimport Lib\n\nproblem$1 = 42" >> src/Problems/Problem$1.hs
fi
