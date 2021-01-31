#!/bin/bash
sudo mkdir /mnt/biggs-fs
if [ ! -d "/etc/smbcredentials" ]; then
sudo mkdir /etc/smbcredentials
fi
if [ ! -f "/etc/smbcredentials/storageaccountuser.cred" ]; then
    sudo bash -c 'echo "username=storageaccountuser" >> /etc/smbcredentials/storageaccountuser.cred'
    sudo bash -c 'echo "password=xxx" >> /etc/smbcredentials/storageaccountuser.cred'
fi
sudo chmod 600 /etc/smbcredentials/storageaccountuser.cred

sudo bash -c 'echo "//storageaccount.file.core.windows.net/fileshare /mnt/biggs-fs cifs nofail,vers=3.0,credentials=/etc/smbcredentials/storageaccountuser.cred,dir_mode=0777,file_mode=0777,serverino" >> /etc/fstab'
sudo mount -t cifs //storageaccount.file.core.windows.net/fileshare /mnt/biggs-fs -o vers=3.0,credentials=/etc/smbcredentials/storageaccountuser.cred,dir_mode=0777,file_mode=0777,serverino

/home/user/broadcast.sh
