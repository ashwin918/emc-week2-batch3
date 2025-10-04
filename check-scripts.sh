#!/bin/bash

echo "Checking shell scripts for syntax errors..."

for file in *.sh; do
  if [ -f "$file" ]; then
    echo "Checking: $file"
    if ! bash -n "$file"; then
      echo "Syntax error in $file"
      exit 1
    fi
  fi
done

