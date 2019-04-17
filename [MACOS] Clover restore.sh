#! /bin/bash

echo "Mounting EFI partition to /Volumes/EFI"
echo "Program must execute as root"
sudo mkdir /Volumes/EFI
sudo mount -t msdos /dev/disk0s1 /Volumes/EFI
sudo echo "EFI partition has been mounted successfully"
sudo echo "Deleting Clover folder..."
sudo rm -rf /Volumes/EFI/EFI/CLOVER
sudo echo "Copying working Clover folder from Gamma..."
sudo cp -r '/Volumes/Gamma/EFI Backups/CLOVER' /Volumes/EFI/EFI/
sudo echo "Cleaning up and unmounting EFI partition..."
sudo diskutil unmount /Volumes/EFI
sudo rm -rf /Volumes/EFI
sudo echo "Clover folder replaced successfully! Should work fine now."
exit