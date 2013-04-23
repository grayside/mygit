#!/bin/bash
. config.dat

for i in "${!conf[@]}"
do
  existing=`git config --get-all $i`
  if [ "$existing" ]
    then
      echo "[Skipped] $i is already set."
    else
      echo "git config $@ $i \"${conf[$i]}\""
      `git config $@ $i "${conf[$i]}"`

      if [ -n "${docs[$i]}" ]
        then
          description=" (${docs[$i]})"
        else
          description=''
      fi
      echo "[Added] $i: ${conf[$i]}$description"
  fi
done

if [ ! -f ~/.gitignore ]
  then
    `cp gitignore.txt ~/.gitignore`
    echo "Installed new .gitignore for current user."
  else
    echo "User already has .gitignore file at ~/.gitignore."
fi
