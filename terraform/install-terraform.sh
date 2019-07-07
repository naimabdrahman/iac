## install terraform on centos 7
## ensure the downloaded terraform package is up-to-date  

yum -y update
yum -y  install wget unzip

cd; mkdir /root/temp
wget https://releases.hashicorp.com/terraform/0.12.3/terraform_0.12.3_linux_amd64.zip -P /root/temp

cd /root/temp
unzip ./terraform_0.12.3_linux_amd64.zip -d /usr/local/bin/

cd
