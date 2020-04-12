## install Hashicorp Vault in centos 7 
mkdir /root/temp
wget https://releases.hashicorp.com/vault/1.4.0/vault_1.4.0_linux_amd64.zip -P /root/temp/
unzip /root/temp/vault_1.4.0_linux_amd64.zip -d /usr/local/bin/
echo -e "run vault to verify"
