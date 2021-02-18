#!/bin/sh
#######################################################################################
#  Author: Chris Karakannas, Jan 2021
#  Arguments:
#  1. A date parameter stricly in the format 'DD-MM-YYYY'
#  Note: The date argument is mandatory.
#  Usage: A simple script to check the validity of an input date that is in the 
#  format 'DD-MM-YYYY'. A WARNING message is shown if the date provided is in the future.
#######################################################################################

isValidDate()
{
  local DATE="$1";
  d=${DATE:0:2}; m=${DATE:3:2}; Y=${DATE:6:4};
  echo "year=$Y, month=$m, day=$d";
  if [[ $DATE =~ ^[0-9]{2}[/-]{1}[0-9]{2}[/-]{1}[0-9]{4}$ ]] && date -d "$Y-$m-$d" &> /dev/null; then
    echo "Date ${DATE} is valid."
  else
    echo "Date ${DATE} OR date format is not valid!"
    exit 1
  fi
  current_date=$(date --date=$(date '+%D') '+%s')
  input_date=$(date --date="$Y-$m-$d" '+%s')
  if [[ $input_date -gt $current_date ]]
  then
    echo "WARNING: Date ${DATE} that you have entered is in the future."
  fi
  exit 0
}
isValidDate $1;