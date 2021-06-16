#!/bin/bash

# This script will do the backup of Photos

DISK="/dev/sdc" # change this according to 'sudo fdisk -l' info 
USB="/media/backup"

# Create a folder backup at /media/
echo "Create a folder backup at /media/ ..."
sudo mkdir /media/backup

# Create a mount point
echo "Create a mount point..."
sudo mkfs.vfat $DISK

# Mount the USB Drive
echo "# Mount the USB Drive..."
sudo mount $DISK $USB

# Copy folder into pendrive
echo "Copy folder into pendrive"
sudo cp -r $HOME/Project_sebastian/ $USB

