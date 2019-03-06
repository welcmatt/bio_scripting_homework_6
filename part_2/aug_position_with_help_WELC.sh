#!/bin/bash

# write a script that takes three arguments and prints them in
# reverse order. if -h is entered anywhere a short help description
# should be printed as well.

if [ "$1" = "-h" ]; then
    echo "To run this script, simply enter three arguments"
    echo "following the script name."
    echo "Example: ./aug_position_with_help_WELC.sh arg1 arg2 arg3"
else
    echo $3 $2 $1
fi
