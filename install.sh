#!/usr/bin/env bash

# Make sure we have a name for the helper
if [ -z $BACKUP_HELPER_NAME ]; then
    BACKUP_HELPER_NAME="backup"
fi

HELPER_FILE_PATH="/usr/local/bin/$BACKUP_HELPER_NAME"

# Install backup helper
wget -O $HELPER_FILE_PATH https://raw.githubusercontent.com/tjventurini/single-file-backup-helper/master/helper.sh

# Make sure the helper is executable
chmod +x $HELPER_FILE_PATH
