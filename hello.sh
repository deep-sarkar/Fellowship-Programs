#! /usr/bin/bash

st="Hello username, How are you?"
echo "$st"
echo "Enter your name"
read name
echo "${st/username/$name}"
