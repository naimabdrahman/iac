## WIP
## for details, refer to https://www.linode.com/docs/applications/configuration-management/how-to-build-your-infrastructure-using-terraform-and-linode/ 

provider "linode" {
  token = "YOUR_LINODE_API_TOKEN"
}

resource "linode_instance" "terraform-web" {
        image = "linode/ubuntu18.04"
        label = "node1"
        group = "Terraform"
        region = "us-east"
        type = "g6-standard-1"
        authorized_keys = [ "YOUR_PUBLIC_SSH_KEY" ]
        root_pass = "YOUR_ROOT_PASSWORD"
}
