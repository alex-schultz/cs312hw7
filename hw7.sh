#!/bin/sh

curl https://raw.githubusercontent.com/alex-schultz/cs312hw7/master/ansible.cfg > ansible.cfg
curl https://raw.githubusercontent.com/alex-schultz/cs312hw7/master/ansible-index.html > ansible-index.html
curl https://raw.githubusercontent.com/alex-schultz/cs312hw7/master/hosts.ini > hosts.ini
curl https://raw.githubusercontent.com/alex-schultz/cs312hw7/master/id_rsa > id_rsa
curl https://raw.githubusercontent.com/alex-schultz/cs312hw7/master/id_rsa.pub > id_rsa.pub
curl https://raw.githubusercontent.com/alex-schultz/cs312hw7/master/playbook.yaml > playbook.yaml
curl https://raw.githubusercontent.com/alex-schultz/cs312hw7/master/server.js > server.js
chmod 600 ~/id_rsa
chmod 644 ~/id_rsa.pub
scp ~/id_rsa.pub root@192.168.1.xxx:/root/.ssh/authorized_keys
cp ~/id_rs* ~/.ssh
sudo yum install -y ansible
ansible-playbook playbook.yaml -i hosts.ini
curl 192.168.1.100:8080 >> results
curl 192.168.1.101:8080 >> results
curl 192.168.1.102:8080 >> results
curl 192.168.1.103:8080 >> results
curl 192.168.1.104:8080 >> results
curl 192.168.1.105:8080 >> results
curl 192.168.1.106:8080 >> results
curl 192.168.1.107:8080 >> results
curl 192.168.1.108:8080 >> results
curl 192.168.1.109:8080 >> results
