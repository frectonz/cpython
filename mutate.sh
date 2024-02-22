#!/usr/bin/env bash

# Exit the script if any command fails
set -e

# Generate parser
make regen-pegen

replace_patterns() {
    find "$1" -type f -name '*.py' -exec sed -i "s/$2/$3/g" {} +
}

# Change 'todo' to 'todo_'
replace_patterns "Lib" "todo" "todo_"

# Replace 'return' with 'bababooey' in Lib, Programs, Tools, and Modules
for dir in "Lib" "Programs" "Tools" "Modules"; do
    replace_patterns "$dir" "return" "bababooey"
done

# Replace 'def' with 'doer' in Lib, Programs, Tools, and Modules
for dir in "Lib" "Programs" "Tools" "Modules"; do
    replace_patterns "$dir" "def " "doer "
done

# Replace 'if' with 'noicely' in Lib, Programs, Tools, and Modules
for dir in "Lib" "Programs" "Tools" "Modules"; do
    replace_patterns "$dir" "\bif " "noicely "
done

# Replace 'class' with 'room' in Lib, Programs, Tools, and Modules
for dir in "Lib" "Programs" "Tools" "Modules"; do
    replace_patterns "$dir" "\bclass " "room "
done

# Replace 'try' with 'fuck_around' in Lib, Programs, Tools, and Modules
for dir in "Lib" "Programs" "Tools" "Modules"; do
    replace_patterns "$dir" "\btry:" "fuck_around:"
done

# Replace 'except' with 'find_out' in Lib, Programs, Tools, and Modules
for dir in "Lib" "Programs" "Tools" "Modules"; do
    replace_patterns "$dir" "\bexcept " "find_out "
    replace_patterns "$dir" "\bexcept:" "find_out:"
done

# Make the mutated Python
make

