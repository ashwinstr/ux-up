#update script of userbot by AshSTR

#get repo
cd ..
echo -n "Which repo you want to update? (OUB or OUB-remix or any other name) : "
read repo
echo " "

rm -rf ${repo}

echo "You're running the OUB-remix update script."
echo " "

#get username of user
echo -n "Enter your github username: "
read userName
echo " "

git clone https://github.com/${userName}/${repo}.git

echo " "
echo "Updating your ${repo} repo..."
echo " "
cd ${repo}

if [[ "${repo}" = 'OUB' ]]; then
	git pull https://github.com/mkaraniya/OpenUserBot.git
fi

if [[ "${repo}" = 'OUB-remix' ]] or [[ "${repo}" = 'OUB-remix-alt']]; then
	git pull https://github.com/sahyam2019/oub-remix.git
else
	echo -n "Enter the upstream repo's username: "
	read ${upstream}
	git pull https://github.com/${upstream}/${repo}.git
fi

git add .
git commit -m "Windows/termux merge"
git push
echo " "
echo "Updated"
echo " "
cd ..
cmd /k
