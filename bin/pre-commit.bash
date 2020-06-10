#!/usr/bin/env bash

echo "Running pre-commit hook"
./bin/run-tests.bash

# $? stores exit value of the last command
if [ $? -ne 0 ]; then
  echo "Tests must pass before commit!"
  exit
fi