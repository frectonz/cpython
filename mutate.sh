#!/usr/bin/env bash

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

# Make the mutated Python
make

