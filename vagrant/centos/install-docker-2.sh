cd /tmp
curl -fsSL https://get.docker.com -o get-docker.sh
sh /tmp/get-docker.sh

systemctl enable docker
systemctl start docker

