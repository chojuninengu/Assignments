#!/bin/bash

# Prompt user for input
echo "Enter first number:"
read num1
echo "Enter second number:"
read num2
echo "Enter operation you want to perform (+, -, *, /):"
read op

# Perform operation based on user input
if [ "$op" = "+" ]; then
    result=$(($num1 + $num2))
elif [ "$op" = "-" ]; then
    result=$(($num1 - $num2))
elif [ "$op" = "*" ]; then
    result=$(($num1 * $num2))
elif [ "$op" = "/" ]; then
    if [ "$num2" -eq 0 ]; then
        echo "Error: Division by zero is not allowed."
        exit 1
    fi
    result=$(($num1 / $num2))
else
    echo "Invalid operation."
    exit 1
fi

# Print result
echo "Result: $result"
