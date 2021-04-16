### update script of userbot by @Kakashi_HTK/@ashwinstr ###


echo " "
echo """### You're running the USERGE-X update script. ###"""
echo " "

#get username of user
echo -n "Kakashi or Itachi or gpack repo or just test? (k)/(i)/(g)/(t): "
read u_n

if [[ "${u_n}" == "k" ]]; then
	rm -rf UX-kakashi
	git clone https://github.com/ashwinstr/UX-kakashi.git
	cd UX-kakashi
	git pull
	git pull https://github.com/ashwinstr/UX-itachi.git
	repo="UX-kakashi"
fi

if [[ "${u_n}" == "i" ]]; then
	rm -rf UX-itachi
	git clone https://github.com/ashwinstr/UX-itachi.git
	cd UX-itachi
	git pull
	git pull https://github.com/code-rgb/USERGE-X.git
	repo="UX-itachi"
fi

if [[ "${u_n}" == "g" ]]; then
        rm -rf MyGpack
        git clone https://github.com/ashwinstr/MyGpack.git
        cd MyGpack
        git pull
        git pull https://github.com/code-pms/MyGpack.git
        repo="MyGpack"
fi

if [[ "${u_n}" == "t" ]]; then
    echo "### TEST ###"
    echo " "
    if [[ nwd == "*/ux-update" ]]; then
        echo "Done 'cd ..'"
        cd ..
    return
fi

echo " "
echo "Updating your ${repo} repo..."
echo " "

git add .
git commit -m "Windows/termux merge"
git push
git diff
echo " "
echo "### UPDATED ###"
echo " "
cd ..
