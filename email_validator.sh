#!/bin/sh
#######################################################################################
#  Author: Chris Karakannas, Jan 2021
#  Arguments:
#  1. A valid email address
#  Note: A single string argument is mandatory.
#  Usage: A simple script to check the format validity of a common email address (99% success rate)####################################################################################### 
# Check arguments passed in equal to 1
PWD=`dirname $0`
if [[ $# -ne 1 ]] ; then
  echo "You must provide exactly 1 argument."
exit 1
fi
re="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9._%+-]+\.[a-zA-Z]{2,}$"
if [[ $1  =~ $re ]]; then
  echo "Email $1 is valid!" 
  exit 0
fi
echo "Invalid email: ${1} - Try again"
exit 1