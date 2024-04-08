#!/bin/bash

if [ "$1" == "neotermux" ]; then
  yes | bash ~/hello/neotermux/dependencies.sh
  bash ~/hello/neotermux/filesystem.sh
  python ~/hello/debug/compiler.py  
  touch storage/shared/TERMUX/TOKEN
  ~/neo/bin/shell

elif [ "$1" == "debug" ]; then
  mkdir compiled
  mkdir ../bin
  python ./debug/compiler.py
  mv ./compiled/* ../bin

  ../bin/shell

else
  echo "not"
fi