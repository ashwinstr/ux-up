# Update script of UserBot by @marshmello61

repo="UserBot"
rm -rf ${repo}

echo "You're running the UserBot Updater script by @marshmello61"
echo " "
# Get username of user
echo -n "Enter your GitHub username: "
read userName
echo " "

# Check if user has forked or has the same repo name
echo -n "Have you forked UserBot from marshmello61 or has the same repo name i.e. UserBot? [y/n]: "
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
echo "Updating your UserBot"
git pull https://github.com/sahyam2019/oub-remix.git
git commit -m "updated"
git push
echo " "
echo "Updated"
cd ..
rm -rf ${repo}
