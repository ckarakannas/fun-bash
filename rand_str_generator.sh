#!/bin/bash
#######################################################################################
#  Author: Chris Karakannas, May 2021
#  Arguments:
#  1. The length of the string required - Integer
#  Note: The random string length arg is optional
#  Usage: A simple script to generate a random string (only Alphanumeric 0-9, A-Z). Default length is 15
######################################################################################

STRING_LENGTH=15

if [[ $# -ge 1 ]]; then
  if [[ $1 =~ ^[0-9]+$ ]]; then
    STRING_LENGTH=$1
  else
    echo "Invalid argument. Required: The random string length (POSITIVE INTEGER)"
    exit 1
  fi
fi

tr -dc A-Za-z0-9 </dev/urandom | head -c ${STRING_LENGTH} ; echo ''
