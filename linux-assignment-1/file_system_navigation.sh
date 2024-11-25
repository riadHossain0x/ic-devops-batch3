#!/bin/bash

echo "Contents of the home directory"
ls ~
echo

echo "Changing directory to /var/log and listing its contents"
cd /var/log
ls
echo

echo "Path to the bash executable"
which bash
echo

echo "Current shell"
echo $SHELL
echo

echo "Details of the current shell process:"
ps -p $$