## WIP
## for details, refer to https://www.linode.com/docs/applications/configuration-management/how-to-build-your-infrastructure-using-terraform-and-linode/ 

provider "linode" {
  token = "YOUR_LINODE_API_TOKEN"
}

resource "linode_instance" "terraform-node" {
        image = "linode/centos7"
        label = "node1"
        group = "Terraform"
        region = "ap-south"
        type = "g6-nanode-1"
        private_ip = "true"
        authorized_keys = [ "YOUR_PUBLIC_SSH_KEY" ]
        root_pass = "YOUR_ROOT_PASSWORD"
}
