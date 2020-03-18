#!/bin/bash

echo "curl set up"
sudo apt-get update
sudo apt install curl
curl -version

echo "key set up"
echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list

curl -sL "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x2EE0EA64E40A89B84B2DF73499E82A75642AC823" | sudo apt-key add

echo "install sbt"
cd ~/opt
wget https://piccolo.link/sbt-1.3.8.tgz
tar -xvzf sbt-1.3.8.tgz
rm sbt-1.3.8.tgz


echo "install scala"
echo "download the source file"

wget https://downloads.lightbend.com/scala/2.11.8/scala-2.11.8

echo "unzip the file"
tar -xvzf scala-2.11.8.tgz

echo ""
echo ""

echo "make scala dir and move file"
mkdir scala
mv scala-2.11.8 ~/opt/scala
rm scala-2.11.8.tgz

echo "create Path for java and scala"
cd ~

sudo sh -c 'echo "export "export SBT_HOME=/home/jessicazhou/opt/sbt" >> .bash_profile'
sudo sh -c 'echo "export PATH=$PATH:$SBT_HOME/bin" >> .bash_profile'
sudo sh -c 'echo "##SCALA_HOME" >> .bash_profile'
sudo sh -c 'echo "export SCALA_HOME=/home/jessicazhou/opt/scala/scala-2.11.8" >> .bash_profile'
sudo sh -c 'echo "export PATH=$PATH:$SCALA_HOME/bin" >> .bash_profile'


echo "source bash profile"
source .bash_profile



echo ""
echo "scala installed success"


