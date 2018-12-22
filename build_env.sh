#Script For setting up build environment....

echo Removing old stuff

sudo rm -rf *

echo done

echo Search for packages

sudo apt update && sudo apt upgrade

echo done

#install git-core

echo installing some important packages

sudo apt-get install git-core && sudo apt install repo && sudo apt install megatools

echo done

#Cloning scripts

echo cloning

git clone https://github.com/akhilnarang/scripts.git

echo done 

#Running and exporting scripts...

echo Working

cd scripts && bash s*/a*

echo done

#Make bin and android directory to initialise repo and clone source

echo making "Bin" and "android"

mkdir -p ~/bin && mkdir -p ~/android

echo done

#Cloning Repo from googleapi

echo cloning

curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo

echo done

#Give permissions

echo Wait

chmod +x ~/bin/repo

echo done. Thanks for using the script. cheers..
