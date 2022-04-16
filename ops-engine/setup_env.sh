# this script runs on ubuntu
#!bash
apt-get update && apt-get install -y locales
apt install -y make git
mkdir /home/dev && cd /home/dev
git clone https://github.com/wg/wrk.git
cd wrk && make
ln ./wrk /usr/local/bin
apt-get install -y python3 python3-pip
pip install fastapi[all]
apt-get install -y inetutils-ping