#!/bin/bash

# Read IFS
echo "IFS is: $IFS"

# Loop through /etc/passwd
while IFS=: read -r user pass uid gid desc home shell; do
  # Extract fields
  username="$user"
  groupname="$(getent group "$gid" | cut -d: -f1)"
  homedir="$home"
  shellcmd="$shell"
  password="******" # Password is not stored in /etc/passwd, so we'll just put asterisks here

  # Print information
  echo "The user $username is part of the $groupname gang, lives in $homedir and rides $shellcmd. User ID's place is protected by the passcode $password, more info about the user here: $desc"
done < /etc/passwd