#!/bin/bash

# to use this script pair, call this script with 1 argument. This argument
# should be the string you would like to query in the book pages
# ex; "./for_do_done.sh arg1"


#  string=$1

if [ $# -eq 0 ]
    then
        echo "Please re-run script with string to be queried as an argument."
else
    for i in /home/aubcls72/homework_6/part_1/book_pages/*.txt
        do ./string_finder_WELC.sh $1 $i
    done
fi
