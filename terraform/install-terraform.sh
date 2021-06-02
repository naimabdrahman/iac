## install terraform on centos 8

'''
## ensure the downloaded terraform package is up-to-date  
## tested version with linode: https://releases.hashicorp.com/terraform/0.11.9/terraform_0.11.9_linux_amd64.zip
'''

:'''
yum -y update
yum -y  install wget unzip

cd; mkdir /root/temp
wget https://releases.hashicorp.com/terraform/0.12.24/terraform_0.12.24_linux_amd64.zip -P /root/temp	

unzip /root/temp/terraform_0.12.24_linux_amd64.zip -d /usr/local/bin/
'''


## installation
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
sudo yum -y install terraform





## validate
terraform --version
