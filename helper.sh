#!/bin/env bash

# Check if we got a filename
if [ -z $1 ]; then
    echo "Please provide a filename"
    exit 1
fi

# Check if the file exists
if [ ! -f $1 ]; then
    echo "File $1 does not exist"
    exit 1
fi

# Setup the variables
FILE_TO_BACKUP=$1
BACKUP_FILE_NAME=$FILE_TO_BACKUP.$(date +%Y-%m-%d_%H-%M-%S)

# Start the backup
echo "Backing up file $FILE_TO_BACKUP to $BACKUP_FILE_NAME"
cp $FILE_TO_BACKUP $BACKUP_FILE_NAME || exit 1
cmp $FILE_TO_BACKUP $BACKUP_FILE_NAME || exit 1

# Print success message
echo "Done! 🚀"