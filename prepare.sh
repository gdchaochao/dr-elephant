#!/usr/bin/env bash

CURRENT_FOLDER=$(cd "$(dirname "$0")";pwd)
echo ${CURRENT_FOLDER}

# install play
wget https://downloads.typesafe.com/typesafe-activator/1.3.12/typesafe-activator-1.3.12.zip
unzip typesafe-activator-1.3.12.zip
mv typesafe-activator-1.3.12 /usr/local/activator
#export ACTIVATOR_HOME=/usr/local/activator
#export PATH=$PATH:${ACTIVATOR_HOME}/bin
echo 'export PATH=/usr/local/activator/bin:$PATH' >> /etc/profile


# install npm
wget https://nodejs.org/dist/v6.10.3/node-v6.10.3-linux-x64.tar.xz
tar xvJf node-v6.10.3-linux-x64.tar.xz
mv node-v6.10.3-linux-x64 /usr/local/node-v6
ln -s /usr/local/node-v6/bin/node /bin/node
ln -s /usr/local/node-v6/bin/npm /bin/npm
echo 'export PATH=/usr/local/node-v6/bin:$PATH' >> /etc/profile
source /etc/profile

# install bower
npm install -g bower
cd ./web; bower install --allow-root; cd ..

pip3 install inspyred

echo "========Prepare Finished!========="
