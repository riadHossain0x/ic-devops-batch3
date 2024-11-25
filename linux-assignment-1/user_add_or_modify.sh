#!/bin/bash

USERNAME="developer"
NEW_USERNAME="devuser"
HOME_DIR="/home/developer_home"
SHELL="/bin/sh"
GROUP="devgroup"
PASSWORD="devpass"

echo "Creating user: $USERNAME with home directory $HOME_DIR and shell $SHELL"
sudo useradd -m -d "$HOME_DIR" -s "$SHELL" "$USERNAME"
echo

echo "Verifying information for user: $USERNAME"
id=$USERNAME
getent passwd "$USERNAME"
echo

echo "Changing username from $USERNAME to $NEW_USERNAME"
sudo usermod -l "$NEW_USERNAME" "$USERNAME"
sudo usermod -d "$HOME_DIR" -m "$NEW_USERNAME"
echo

echo "Adding group: $GROUP and assigning $NEW_USERNAME to it"
sudo groupadd "$GROUP"
sudo usermod -aG "$GROUP" "$NEW_USERNAME"
echo

echo "Setting password for $NEW_USERNAME"
echo "$NEW_USERNAME:$PASSWORD" | sudo chpasswd
echo

echo "Verifying updated information for user: $NEW_USERNAME"
id="$NEW_USERNAME"
getent passwd "$NEW_USERNAME"
groups "$NEW_USERNAME"
echo
