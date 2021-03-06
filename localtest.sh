#!/bin/bash

set -x
set -e

echo "Executing version 1 tests"
for file in $(ls test/v1/*.sh); do
  chmod +x $file
  sudo $file
done

echo "Executing version 2 tests"

for file in $(ls test/v2/*.sh); do
  chmod +x $file
  sudo $file
done

echo "Local test completed"
