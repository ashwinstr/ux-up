### update script for USERGE-X by @Kakashi_HTK/@ashwinstr ###

./creds.sh

echo " "
echo """### You're running the USERGE-X fork update script. ###"""
echo " "

user_n = ${username}
repo_ = ${repo}
up_ = ${upstream}

git clone https://github.com/${user_n}/${repo_}
cd ${repo_}
git pull
git pull ${up_}
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
