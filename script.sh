#!/bin/sh

. $PWD/creds.sh

### update script for USERGE-X by @Kakashi_HTK/@ashwinstr ###

echo " "
echo """### You're running the USERGE-X fork update script. ###"""
echo " "

git clone https://github.com/${username}/${repo}
cd ${repo}
git pull
git pull ${upstream}
git diff

echo " "
echo "Updating your ${repo} repo..."
echo " "

git add .
git commit -m "Windows/termux merge"
git push
echo " "
echo "### UPDATED ###"
echo " "
echo "### NOTE: Based on the conflicts occured in this merge, you might need to remove '<<<<<HEAD' from the merged repo or it might crash the bot. ###"
echo " "
cd ..
