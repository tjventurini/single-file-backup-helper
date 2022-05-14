#!/usr/bin/env bash

HELPER_FILE_PATH="/usr/local/bin/backup"

# Install backup helper
wget -O $HELPER_FILE_PATH https://raw.githubusercontent.com/tjventurini/single-file-backup-helper/master/helper.sh

# Make sure the helper is executable
chmod +x $HELPER_FILE_PATH
