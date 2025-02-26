#!/usr/bin/env bash

language=$(echo "C C++ Java Python" | tr ' ' '\n')
selected=$(printf "%s\n" $language | fzf)

if [ -z "$selected" ]; then
  echo "No language selected. Exiting."
  exit 1
fi

read -r -p "Project name: " project_name

if [ -z "$project_name" ]; then
  echo "Project name cannot be empty. Exiting."
  exit 1
fi

mkdir -p "$project_name/src"

case "$selected" in
  Java)
    wget -P "$project_name" https://raw.githubusercontent.com/firozkhan4/MakeFiles/main/Java/Makefile 
    wget -P "$project_name/src" https://raw.githubusercontent.com/firozkhan4/MakeFiles/main/Java/Main.java
    ;;
  Python)
    wget -P "$project_name" https://raw.githubusercontent.com/firozkhan4/MakeFiles/main/Python/Makefile
    wget -P "$project_name/src" https://raw.githubusercontent.com/firozkhan4/MakeFiles/main/Python/main.py
    ;;
  C++)
    mkdir -p "$project_name/include"
    wget -P "$project_name" https://raw.githubusercontent.com/firozkhan4/MakeFiles/main/C++/Makefile
    wget -P "$project_name/src" https://raw.githubusercontent.com/firozkhan4/MakeFiles/main/C++/main.cpp
    ;;
  C)
    mkdir -p "$project_name/include"
    wget -P "$project_name" https://raw.githubusercontent.com/firozkhan4/MakeFiles/main/C/Makefile
    wget -P "$project_name/src" https://raw.githubusercontent.com/firozkhan4/MakeFiles/main/C/main.c
    ;;
esac

