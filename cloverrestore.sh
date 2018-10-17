#! /bin/bash

echo "Mounting EFI partition to /efimount"
sudo mkdir /efimount
sudo mount /dev/sda1 /efimount
sudo echo "EFI partition has been mounted successfully"
sudo echo "Deleting Clover folder..."
sudo rm -rf /efimount/EFI/CLOVER
sudo echo "Copying working Clover folder from Gamma..."
sudo cp -r '/hdd/EFI Backups/CLOVER' /efimount/EFI/
sudo echo "Cleaning up and unmounting EFI partition..."
sudo umount /efimount
sudo rm -rf /efimount
sudo echo "Clover folder replaced successfully! Should work fine now."
exit

