#update script of userbot by AshSTR

#get repo
cd ..
repo = "USERGE-X"

rm -rf ${repo}

echo "You're running the USERGE-X update script."
echo " "

#get username of user

git clone https://github.com/ashwinsutar1996/${repo}.git

echo " "
echo "Updating your ${repo} repo..."
echo " "
cd ${repo}

git pull https://github.com/ashwinstr/UX-kakashi.git

git add .
git commit -m "Windows/termux merge"
git push
echo " "
echo "Updated"
echo " "
cd ..
cmd /k
