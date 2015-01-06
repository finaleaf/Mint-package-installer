sudo echo -e "\e[0;31m set repositories.\e[0m"
sudo sed -i 's/us.archive.ubuntu.com/ftp.daum.net/' /etc/apt/sources.list
cd ~
sudo wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo add-apt-repository ppa:webupd8team/java
sudo add-apt-repository deb http://archive.getdeb.net/ubuntu utopic-getdeb apps
sudo wget -q -O- http://archive.getdeb.net/getdeb-archive.key | sudo apt-key add -
sudo apt-get update
sudo apt-get upgrade

sudo echo -e "\e[0;31m install packages for system and development.\e[0m"
sudo apt-get install apache2 mariadb-common mariadb-server php5 php5-common libapache2-mod-php5 rabbitvcs-core nemo-rabbitvcs openssh-server subversion curl libssl-dev htop oracle-java8-installer samba ruby rubygems-integration xkbset -y
sudo gem update
sudo gem install capistrano
sudo gem install capistrano-ext --no-ri --no-rdoc

sudo echo -e "\e[0;31m install packages for desktop.\e[0m"
sudo apt-get install transmission-remote-gtk dconf-editor xpad shutter google-chrome-stable gparted mysql-workbench sqlitebrowser -y
sudo wget "http://downloads.sourceforge.net/project/pacmanager/pac-4.0/pac-4.5.5-all.deb"
sudo dpkg -i ./pac-4.5.5-all.deb
sudo apt-get install -f

sudo echo -e "\e[0;31m set directories.\e[0m"
sudo cp -rf ./conf/user-dirs.dirs  ~/.config/
sudo mv -f ~/바탕화면 ~/Desktop
sudo mv -f ~/다운로드 ~/Downloads
sudo mv -f ~/템플릿 ~/Templates
sudo mv -f ~/공개 ~/Public
sudo mv -f ~/문서 ~/Documents
sudo mv -f ~/음악 ~/Music
sudo mv -f ~/사진 ~/Pictures
sudo mv -f ~/비디오 ~/Videos
