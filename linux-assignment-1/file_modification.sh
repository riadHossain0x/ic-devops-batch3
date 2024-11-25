#!/bin/bash

FILE="$HOME/example.txt"

echo "Creating file: $FILE"
touch "$FILE"
echo

echo "Creating user 'student'"
sudo useradd student
echo

echo "Creating group 'students'"
sudo groupadd students
echo

echo "Assigns the user 'student' to the group 'students'"
sudo usermod -aG students student

echo "Changing the owner of $FILE to 'student'"
sudo chown student "$FILE"
echo

echo "Changing the group of $FILE to 'students'"
sudo chgrp students "$FILE"
echo

echo "Verifying ownership and group of $FILE"
ls -l "$FILE"
