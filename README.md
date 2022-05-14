# Single File Backup Helper

This terminal helper is going to help you to quickly backup single files of your system.

## Installation

```bash
wget -qO- https://raw.githubusercontent.com/tjventurini/single-file-backup-helper/master/install.sh | sudo bash
```

If you want to change the untility name from `backup` to something else, you can run the following.

```bash
wget -O /usr/local/bin/BACKUP_HELPER_NAME https://raw.githubusercontent.com/tjventurini/single-file-backup-helper/master/helper.sh
```

> You can update the helper utility at any time by running this again.

## Usage

Let's say you want to backup your `/etc/hosts` file. Then you can run the following to do so.

```bash
sudo backup /etc/hosts
```

Behind the scenes this will execute the following command.

```bash
FILE_TO_BACKUP=/etc/hosts
BACKUP_FILE_NAME=/etc/hosts.$(date +%Y-%m-%d)
cp $FILE_TO_BACKUP $BACKUP_FILE_NAME
cmp $FILE_TO_BACKUP $BACKUP_FILE_NAME
```
