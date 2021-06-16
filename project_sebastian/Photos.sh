#!/bin/bash

# This script will do the backup of Photos

## Get list of disks available on your machine
## and list them
sudo fdisk -l > list_disks ; grep -r "Disk /dev/sd" list_disks

## Please, Choose the right Disk (pendrive), be careful.
echo "Usage: for example sdb, type >>> b:"
echo "Type the disk:"
read X

DISK="/dev/sd${X}" # change this according to 'sudo fdisk -l' info 
USB="/media/backup"

# Create a folder backup at /media/
echo "Create a folder backup at /media/ ..."
sudo mkdir $USB

# Create a mount point
echo "Create a mount point..."
sudo mkfs.vfat $DISK

# Mount the USB Drive
echo "Mount the USB Drive..."
sudo mount $DISK $USB

# Copy folder into pendrive
echo "Copy folder into pendrive"
sudo cp -r $HOME/repo/shell_script/project_sebastian/pictures/ $USB

echo "All done"

