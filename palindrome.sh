#!/bin/bash
read -p "Enter a string: " input
str=$input
len=${#str}
is_palindrome() {
	for (( i=0; i<($len/2); i++ )); do
        if [ "${str:$i:1}" != "${str: -$(($i + 1)):1}" ]; then
            return 1
        fi
    done
    return 0
}
if is_palindrome; then
    palindrome_message="The string is a palindrome."
else
    palindrome_message="The string is not a palindrome."
fi
echo "Number of letters: $len"
echo "$palindrome_message"
