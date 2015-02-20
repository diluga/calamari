#/bin/bash
set -e

wget -O install_salt.sh https://bootstrap.saltstack.com
sudo sh install_salt.sh -P git v2014.1.13
sudo salt-call --local --file-root=$(pwd)/vagrant/devmode/salt/roots state.highstate
