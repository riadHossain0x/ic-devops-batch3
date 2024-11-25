#!/bin/bash

PROJECT_DIR="$HOME/project"
REPORT_FILE="$PROJECT_DIR/report.txt"

echo "Creating directory: $PROJECT_DIR"
mkdir -p "$PROJET_DIR"
echo

echo "Creating file: $REPORT_FILE"
touch "$REPORT_FILE"
echo

echo "Setting permission for $REPORT_FILE"
chmod 644 "$REPORT_FILE"
echo

echo "Setting permissions for $PROJECT_DIR"
chmod 755 "$PROJECT_DIR"
echo

echo "Verifying permission for $REPORT_FILE"
ls -l "$REPORT_FILE"
echo

echo "Verifying permissions for $PROJECT_DIR"
ls -ld "$PROJECT_DIR"
echo