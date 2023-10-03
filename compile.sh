#!/bin/bash

# Get the current directory name
current_directory=$(basename "$PWD")

# Check if the current directory is "helix.vim"
if [ "$current_directory" != "helix.vim" ]; then
  echo "Error: The current directory is not called helix.vim" >&2
  exit 1
fi

echo '" This file was compiled by helix.vim/compile.sh' > helix.vim
echo '' >> helix.vim
cat src/unmap.vim src/helix.vim src/find.vim src/replace.vim >> helix.vim
cat helix.vim src/helix.vs.vim > helix.vs.vim
