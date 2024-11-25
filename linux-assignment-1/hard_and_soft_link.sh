#!/bin/bash

HOME_DIR="$HOME"
ORIGINAL_FILE="$HOME_DIR/original.txt"
SOFT_LINK="$HOME_DIR/softlink.txt"
DATA_FILE="$HOME_DIR/datafile.txt"
HARD_LINK="$HOME_DIR/hardlink.txt"

echo "Creating file: $ORIGINAL_FILE"
touch "$ORIGINAL_FILE"
echo

echo "Creating symbolic link: $SOFT_LINK pointing to $ORIGINAL_FILE"
ln -s "$ORIGINAL_FILE" "$SOFT_LINK"
echo

echo "Verifying symbolic link:"
ls -l "$SOFT_LINK"
echo

echo "Deleting orginal file: $ORIGINAL_FILE"
rm "$ORIGINAL_FILE"
echo "Verifying symbolic link after deletion of the original file"
ls -l "$SOFT_LINK"
echo

echo "Creating file: $DATA_FILE"
touch "$DATA_FILE"
echo

echo "Creating hard link: $HARD_LINK pointing to $DATA_FILE"
ln "$DATA_FILE" "$HARD_LINK"
echo

echo "Verifying hard link"
ls -l "$HARD_LINK"
echo

echo "Checking inode number of  $DATA_FILE and $HARD_LINK"
ls -i "$DATA_FILE" "$HARD_LINK"
echo

echo "Deleting original file $DATA_FILE"
rm "$DATA_FILE"
echo "Verifying hard link after deletion of the original file"
ls -l "$HARD_LINK"
echo "Contents of the hard link after deletion"
cat "$HARD_LINK"
echo

echo "Finding all .txt files in $HOME_DIR"
find "$HOME_DIR" -type f -name "*.txt"
