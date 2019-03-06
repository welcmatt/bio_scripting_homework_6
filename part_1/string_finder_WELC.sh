# Write a script that searches for a specific word (string) in a file
# and displays how many times, and on what line numbers, they were found
# in that file.

#!/bin/bash

# read -p "What string would you like to search for? " string
# the above approach does not work with the for_do_done.sh...at least not now



NumOccur=$(grep -o "$1" $2 | wc -l)
LinesOccur=$(grep -n "$1" $2 | cut -d : -f 1)

echo "There are $NumOccur occurences of $1 in file '$2'" >> part_1_output_WELC.txt
echo "The word/string '$1' is found on the following line(s): $LinesOccur" >> part_1_output_WELC.txt
