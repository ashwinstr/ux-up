#Update script of UserBot by @marshmello61
#Some fixes by @RoyalBoy69


repo="oub-remix"
rm -rf ${repo}

echo "You're running the oub-remix Updater script"
echo " "
# Get username of user
echo -n "Enter your GitHub username: "
read userName
echo " "

# Check if user has forked or has the same repo name
echo -n "Have you forked oub-remix from sahyam2019 or has the same repo name i.e. oub-remix? [y/n]: "
read fork
echo " "

if [[ "${fork}" == 'y' ]]; then
	git clone https://github.com/${userName}/${repo}.git
	cd ${repo}
elif [[ "${fork}" == 'n' ]]; then
	echo -n "Enter your repo name: "
	read repo
	git clone https://github.com/${userName}/${repo}.git
	cd ${repo}
else
        echo " "
        echo "You were only supposed to enter y or n"
        exit 1
fi

echo " "
echo "Updating your oub-remix"
git pull https://github.com/sahyam2019/oub-remix.git
git commit -m "😎"
git push
echo " "
echo "Updated"
cd ..
rm -rf ${repo}
