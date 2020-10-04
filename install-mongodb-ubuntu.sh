
#https://askubuntu.com/questions/842592/apt-get-fails-on-16-04-or-18-04-installing-mongodb
sudo apt remove --autoremove mongodb-org

sudo rm /etc/apt/sources.list.d/mongodb*.list
sudo apt update

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 4B7C549A058F8B6B

echo "deb [arch=amd64] http://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list

sudo apt update
sudo apt install mongodb-org

sudo systemctl unmask mongod.service
sudo systemctl enable mongod.service
sudo systemctl start mongod.service
