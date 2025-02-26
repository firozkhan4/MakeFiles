#!/usr/bin/env bash

language=`echo "C C++ Java Python" | tr ' ' '\n'`
selected=`printf "$language" | fzf`
read -p "project name: " project_name

mkdir -p "$project_name/src"

if [ "$selected" == "Java" ]; then
  wget -P "$project_name" https://raw.githubusercontent.com/firozkhan4/MakeFiles/main/Java/Makefile 
  wget -P "$project_name/src" https://raw.githubusercontent.com/firozkhan4/MakeFiles/main/Java/Main.java
elif [ "$selected" == "Python" ]; then
  wget -P "$project_name" https://raw.githubusercontent.com/firozkhan4/MakeFiles/main/Python/Makefile
  wget -P "$project_name/src" https://raw.githubusercontent.com/firozkhan4/MakeFiles/main/Python/main.py
elif [ "$selected" == "C++" ]; then
  mkdir -p "$project_name/include"
  wget -P "$project_name" https://raw.githubusercontent.com/firozkhan4/MakeFiles/main/C++/MakeFile
  wget -P "$project_name/src" https://raw.githubusercontent.com/firozkhan4/MakeFiles/main/C++/main.cpp
elif [ "$selected" == "C" ]; then
  mkdir -p "$project_name/include"
  wget -P "$project_name" https://raw.githubusercontent.com/firozkhan4/MakeFiles/main/C/Makefile
  wget -P "$project_name/src" https://raw.githubusercontent.com/firozkhan4/MakeFiles/main/C/main.c
fi
