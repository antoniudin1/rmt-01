#!/bin/bash

echo "Starting the script..."

echo "Creating a repository..."
echo "Hello from the first command!"

echo "#"
echo "#"
echo "#"
echo "#"
echo "#"
echo "#"
echo "#"
echo "#"
echo "#"
echo "#"

read -p "Please enter a message: " $user_message

echo "You just typed: $user_message"

# Define directory names
DIR1="project1"
DIR2="project2"


create_fake_python_structure() {
  local DIR=$1
  mkdir -p "$DIR/src"
  mkdir -p "$DIR/tests"
  mkdir -p "$DIR/docs"
  mkdir -p "$DIR/src/utils"
  
  touch "$DIR/src/main.py"
  touch "$DIR/src/utils/helpers.py"
  touch "$DIR/src/config.py"
  touch "$DIR/tests/test_main.py"
  touch "$DIR/tests/test_helpers.py"
  touch "$DIR/docs/README.md"
}

create_fake_python_structure "$DIR1"
create_fake_python_structure "$DIR2"

echo "Directory structure created:"
tree "$DIR1"
tree "$DIR2"


