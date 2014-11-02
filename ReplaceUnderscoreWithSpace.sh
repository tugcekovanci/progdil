#!/bin/bash
# düzenli ifade ile
 
string=$1
[[ $string =~ ^(_*)(.*[^_])(_*)$ ]]
echo "${BASH_REMATCH[1]}${BASH_REMATCH[2]//_/ }${BASH_REMATCH[3]}