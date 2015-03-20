#!/usr/bin/env bash
echo "bootstraped by yann ;)"

echo system-config-keyboard fr >> /home/vagrant/.bash_profile



#java install
cd /opt
wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/7u75-b13/jdk-7u75-linux-x64.tar.gz"
tar -xzf jdk-7u75-linux-x64.tar.gz
cd jdk1.7.0_75/
alternatives --install /usr/bin/java java /opt/jdk1.7.0_75/bin/java 2
sudo alternatives --set java /opt/jdk1.7.0_75/bin/java
cp /vagrant/java.sh /etc/profile.d/
chmod +x /etc/profile.d/java.sh
echo source /etc/profile.d/java.sh  >> /home/vagrant/.bashrc
cd 
source /etc/profile.d/java.sh

#maven install
yum install -y unzip
wget http://wwwftp.ciril.fr/pub/apache/maven/maven-3/3.2.5/binaries/apache-maven-3.2.5-bin.zip
unzip apache-maven-3.2.5-bin.zip
mv apache-maven-3.2.5/ /opt/maven
ln -s /opt/maven/bin/mvn /usr/bin/mvn
cp /vagrant/maven.sh /etc/profile.d/
chmod +x /etc/profile.d/maven.sh
echo source /etc/profile.d/maven.sh >> /home/vagrant/.bashrc
mvn -version

#ant install
wget http://mirror.sdunix.com/apache//ant/binaries/apache-ant-1.9.4-bin.zip
unzip apache-ant-1.9.4-bin.zip
mv apache-ant-1.9.4/ /opt/ant
ln -s /opt/ant/bin/ant /usr/bin/ant
cp /vagrant/ant.sh /etc/profile.d/
chmod +x /etc/profile.d/ant.sh
echo source /etc/profile.d/ant.sh >> /home/vagrant/.bashrc

#git install
yum install -y git-1.7.1-3.el6_4.1.x86_64
git config --global user.name "yann"
git config --global user.email "yann.blanc.38144@gmail.com"

#nodejs install
curl -sL https://rpm.nodesource.com/setup | bash -
yum install -y nodejs

#sdk android install
yum install -y glibc.i686 glibc-devel.i686 libstdc++.i686 zlib-devel.i686 ncurses-devel.i686 libX11-devel.i686 libXrender.i686 libXrandr.i686
ANDROID_SDK_FILENAME=android-sdk_r24.0.2-linux.tgz
ANDROID_SDK=http://dl.google.com/android/$ANDROID_SDK_FILENAME
wget $ANDROID_SDK
tar -xzf $ANDROID_SDK_FILENAME
mv android-sdk-linux/ /opt/android-sdk-linux/
chown -R vagrant /opt/android-sdk-linux/
cp /vagrant/android.sh /etc/profile.d/
chmod +x /etc/profile.d/android.sh
echo source /etc/profile.d/android.sh >> /home/vagrant/.bashrc

#cordova install 
npm install -g cordova;

#clone project test
cd /home/vagrant
git clone https://github.com/yanngit/test
git clone https://github.com/yannGitH/WeatherApp
echo "Terminé !!"
