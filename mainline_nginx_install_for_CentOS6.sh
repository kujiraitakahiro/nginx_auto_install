#/bin/bash
echo "========Nginx reposigory file creating=========="
echo "If you want to see repository file, please see /etc/yum.repos.d/nginx.repo."
echo "[nginx]" > /etc/yum.repos.d/nginx.repo
echo "name=nginx" >> /etc/yum.repos.d/nginx.repo
echo "baseurl=http://nginx.org/packages/mainline/centos/\$releasever/\$basearch/" >> /etc/yum.repos.d/nginx.repo
echo "gpgcheck=0" >> /etc/yum.repos.d/nginx.repo
echo "enabled=1" >> /etc/yum.repos.d/nginx.repo
echo ""
echo ""
echo "========Nginx install=========="
yum -y install nginx
echo ""
echo ""
echo "========Nginx starting=========="
service nginx start
echo ""
echo ""
echo "========Nginx IP address checking=========="
ifconfig | grep "inet addr:"
echo ""
echo ""
echo "========Nginx status checking=========="
service nginx status
echo ""
echo ""
echo "========Linux's firewall settings=========="
iptables -L --line-numbers
echo "*********************************************"
echo "Please accept nginx's TCP port by your Linux!"
