#!/bin/bash
echo "What would you like to install?"
read app

winget search $app

echo "Type the ID of the app you want to install:"
read ID

echo "Installing $app"

touch installerbashlogs.txt

winget install --id $ID >> installerbashlogs.txt


echo "$app Installed"
sleep 1
exit
