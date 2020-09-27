#update script of userbot by **AshSTR**

#get repo
$repo = Read-Host "OUB or OUB-remix? Select one for now. "

if ($repo -eq 'OUB' -or $repo -eq 'OUB-remix' -or $repo -eq 'OUB-remix-alt') #alt repo is mine (AshSTR's)
	{
	if (Test-Path "C:\Users\ashwi\Documents\GitHub\${repo}")
		{
		Remove-Item $repo -Recurse -Force
		}

	Write-Host "You're running the OUB-remix update script."
	Write-Host " "

	#get username of user
	$userName = Read-Host "Enter your github username: "
	Write-Host " "

	#check whether forked properly or not
	$fork = Read-Host "Have you forked oub-remix from mkaraniya/sahyam2019 or has the same repo name i.e. OpenUserBot or oub-remix? [y/n]: "
	Write-Host " "

	if ($fork -eq 'y')
		{
		git clone https://github.com/${userName}/${repo}.git
		}
	elseif ($fork -eq 'n')
		{
		$repo = Read-Host "Enter your repo name: "
		git clone https://github.com/${userName}/${repo}.git
		}
	else
		{
        	Write-Host "You were only supposed to enter y or n."
		Write-Host " "
        	exit 1
		}

	if ()
	Write-Host " "
	Write-Host "Updating your oub-remix"
	cd $repo

	if ($repo -eq 'OUB')
		{
		git pull https://github.com/mkaraniya/OpenUserBot.git
		}
	if ($repo -eq 'OUB-remix')
		{
		git pull https://github.com/sahyam2019/oub-remix.git
		}
	git add .
	git commit -m "Windows merge"
	git push
	Write-Host " "
	Write-Host "Updated"
	cd..
	}
else
	{
	Write-Host "Please type proper repo name."
	Write-Host " "
	}
