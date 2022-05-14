# Single File Backup Helper

This terminal helper is going to help you to quickly backup single files of your system.

## Installation

```bash
sh -c "$(wget -qO- https://raw.githubusercontent.com/tjventurini/single-file-backup-helper/master/install.sh)"
```

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
