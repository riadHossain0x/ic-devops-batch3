#!/bin/bash

HOME_DIR="$HOME/linux_fundamentals"

echo "Creating directory: $HOME_DIR"
mkdir -p "$HOME_DIR"
echo

echo "Creating subdirectory: $HOME_DIR/scripts"
mkdir -p "$HOME_DIR/scripts"
echo

echo "Creating empty file: $HOME_DIR/example.text"
touch "$HOME_DIR/example.txt"
echo

echo "Copying $HOME_DIR/example.txt to $HOME_DIR/scripts"
cp "$HOME_DIR/example.txt" "$HOME_DIR/scripts"
echo

echo "Creating backup directory: $HOME_DIR/backup"
mkdir -p "$HOME_DIR/backup"
echo

echo "Moving $HOME_DIR/example.txt to $HOME_DIR/backup"
mv "$HOME_DIR/example.txt" "$HOME_DIR/backup"
echo

TARGET_FILE=$HOME_DIR/backup/example.txt
echo "Changing permission of $TARGET_FILE to read/write for owner and read-only for group and others"
chmod 644 "$TARGET_FILE"
echo

echo "Verifying permissions of $TARGET_FILE"
ls -l "$TARGET_FILE"
echo
