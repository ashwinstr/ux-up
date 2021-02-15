#update script of userbot by AshSTR

cd ..

echo " "
echo """###You're running the USERGE-X update script.###"""
echo " "

#get username of user
echo -n "Main or upstream and Kakashi or Itachi (k-m)/(k-u)/(i-m)/(i-u) : "
read u_n

if [[ "${u_n}" == "k-m" ]]; then
	rm -rf USERGE-X
	git clone https://github.com/ashwinsutar1996/USERGE-X.git
	cd USERGE-X
	git pull
	git pull https://github.com/ashwinstr/UX-kakashi.git
	repo="USERGE-X"

if [[ "${u_n}" == "k-u" ]]; then
	rm -rf UX-kakashi
	git clone https://github.com/ashwinstr/UX-kakashi.git
	cd UX-kakashi
	git pull
	git pull https://github.com/code-rgb/USERGE-X.git
	repo="UX-kakashi"

if [[ "${u_n}" == "i-m" ]]; then
	rm -rf ux-exp
	git clone https://github.com/ashwinstr/ux-exp.git
	cd ux-exp
	git pull
	git pull https://github.com/ashwinstr/UX-itachi.git
	repo="ux-exp"

if [[ "${u_n}" == "i-u" ]]; then
	rm -rf UX-itachi
	git clone https://github.com/ashwinstr/UX-itachi.git
	cd UX-itachi
	git pull
	git pull https://github.com/code-rgb/USERGE-X.git
	repo="UX-itachi"

echo " "
echo "Updating your ${repo} repo..."
echo " "

git add .
git commit -m "Windows/termux merge"
git push
echo " "
echo "Updated"
echo " "
cd ..
cmd /k
