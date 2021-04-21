### update script for USERGE-X by @Kakashi_HTK/@ashwinstr ###


echo " "
echo """### You're running the USERGE-X fork update script. ###"""
echo " "

#get username of user
echo -n "Enter your github username of your fork/clone: "
read u_n

echo -n "Updating fork(f) or clone(c): "
read fork

if [[ "${fork}" == "c" ]]; then
    echo -n "Enter forked repo's name: "
    read repo
elif [[ "${fork}" == "f" ]]; then
    repo = "USERGE-X"
else
    echo "Enter either 'f' or 'c' please..."
    return
fi

git clone https://github.com/${u_n}/${repo}
cd ${repo}
git pull
git pull https://github.com/code-rgb/USERGE-X
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
echo "### NOTE: Based on the conflicts occured in this merge, you might need to repo '<<<<<HEAD' from the merged repo or it might crash the bot. ###"
echo " "
cd ..
