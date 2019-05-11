#!/bin/bash
# sebang
# /bin/bash <FILENAME>

# This script displays carious information to the screen

# Display 'Hello'
# type -a echo
# echo is a shell builtin
echo 'Hello'

# Assign a value to a variable
WORD='script'

# Display variable "" is for expansion of variable
echo "$WORD"

# Demonstrate that single quotes cause variables to NOT get expanded
echo '$WORD'

# combine the variable with hard-coded text
echo "This is a shell $WORD"

# Display the content of the variable using an alternative syntax
echo "This is a shell ${WORD}"

# Append text to variable
echo "${WORD}ing is fun!"

# Show how to not append text to a variable
# Does not work
echo "$WORDing is fun"

# Create a new variable
ENDING='ed'

# Combine two variables
echo "This is ${WORD}${ENDING}."
