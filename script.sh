#!/bin/bash
if grep -q "backports"  /etc/apt/sources.list
then
   echo "OK, BACKPORTS FOUND";
else
   echo "NOT OK";
fi

sudo apt update

sudo apt install apache2
sudo ufw app list
sudo ufw allow 'Apache'
sudo ufw status
sudo systemctl start apache2
sudo systemctl status apache2

sudo apt update
sudo apt install wget build-essential checkinstall
sudo apt install libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libffi-dev zlib1g-dev



sudo apt install python3.11

python3.11 --version


sudo apt update
sudo apt-get install openssh-server
sudo systemctl status ssh

sudo snap install curl
curl ifconfig.co


for file in "$@"  
do
if [ -d "$file" ]
then
echo "$file - директория"
elif [ -f "$file" ]
then
echo "$file -файл"
fi
done


curl -4 wttr.in/Moscow


sudo du -S /var/log/ |
sort -rn |
sed '{11,$D; =}' |
sed 'N; s/\n/ /' |
awk '{printf $1 ":" "\t" $2 "\t" $3 "\n"}'


git init
git config --global user.email "89193059615@mail.ru"
git config --global user.name "Pavel"
git add script.sh
git commit -m "first commit"
git branch -M main
git remote add origin git@github.com:PaveLEr15/test.git
git push -u origin main
