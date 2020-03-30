## Update YUM with Cloud SDK repo information:
## reference https://cloud.google.com/sdk/docs/quickstart-redhat-centos


tee -a /etc/yum.repos.d/google-cloud-sdk.repo << EOL
[google-cloud-sdk]
name=Google Cloud SDK
baseurl=https://packages.cloud.google.com/yum/repos/cloud-sdk-el7-x86_64
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg
       https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg
EOL

# The indentation for the 2nd line of gpgkey is important.

# Install the Cloud SDK
yum -y install google-cloud-sdk