# sudo yum update -y
sudo yum install epel-release -y
sudo yum install nginx -y
sudo yum install telnet -y && sudo yum install -y net-tools
sudo systemctl enable firewalld && sudo systemctl start firewalld
sudo firewall-cmd --permanent --zone=public --add-service=http 
sudo firewall-cmd --permanent --zone=public --add-service=https
sudo firewall-cmd --reload
sudo systemctl enable nginx
sudo systemctl start nginx
sudo systemctl status nginx -l
sudo ifconfig
sudo mkdir /usr/share/nginx/html.bak
sudo cp -r /usr/share/nginx/html/* /usr/share/nginx/html.bak
sudo cp /etc/nginx/nginx.conf /etc/nginx/nginx.conf.bak
sudo mkdir /usr/share/nginx/test
sudo cp -r /tmp/test/* /usr/share/nginx/test
sudo cp -r /usr/share/nginx/test/nginx.conf /etc/nginx/nginx.conf
sudo systemctl restart nginx