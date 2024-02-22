#!/usr/bin/env bash

# Exit the script if any command fails
set -e

# Generate parser
make regen-pegen

replace_patterns() {
    find "$1" -type f -name '*.py' -exec sed -i "s/\b$2\b/$3/g" {} +
}

# Change 'todo' to 'todo_'
replace_patterns "Lib" "todo" "todo_"

for dir in "Lib" "Programs" "Tools" "Modules"; do
    replace_patterns "$dir" "return" "bababooey"
    replace_patterns "$dir" "def"    "doer"
    replace_patterns "$dir" "if"     "noicely"
    replace_patterns "$dir" "class"  "room"
    replace_patterns "$dir" "try"    "fuck_around"
    replace_patterns "$dir" "except" "find_out"
    replace_patterns "$dir" "elif"   "else_if"
    replace_patterns "$dir" "for"    "each"
done

# Make the mutated Python
make

