#update script of userbot by AshSTR

#get repo
echo -n "OUB or OUB-remix? Select one for now: "
read repo
echo " "

rm -rf ${repo}

echo "You're running the OUB-remix update script."
echo " "

#get username of user
echo -n "Enter your github username: "
read userName
echo " "

#check whether forked properly or not
echo -n "Have you forked oub-remix from mkaraniya/sahyam2019 or has the same repo name i.e. OpenUserBot or oub-remix? [y/n]: "
read fork
echo " "

if [[ "${fork}" = 'y' ]]; then
	git clone https://github.com/${userName}/${repo}.git
elif [["${fork}" = 'n' ]]; then
	echo "Enter your repo name: "
	read repo
	git clone https://github.com/${userName}/${repo}.git
else
		echo "You were only supposed to enter y or n."
		echo " "
		exit 1
fi

echo " "
echo "Updating your oub-remix..."
echo " "
cd ${repo}

if [[ "${repo}" = 'OUB' ]]; then
	git pull https://github.com/mkaraniya/OpenUserBot.git
fi

if [[ "${repo}" = 'OUB-remix' ]]; then
	git pull https://github.com/sahyam2019/oub-remix.git
fi

git add .
git commit -m "Windows merge"
git push
echo " "
echo "Updated"
echo " "
cd ..
cmd /k
