#!/usr/bin/env bash

# Make sure we have a name for the helper
if [ -z $BACKUP_HELPER_NAME ]; then
    BACKUP_HELPER_NAME="backup"
fi

# Install backup helper
wget -O /home/$USER/bin/$BACKUP_HELPER_NAME https://raw.githubusercontent.com/tjventurini/single-file-backup-helper/master/helper.sh