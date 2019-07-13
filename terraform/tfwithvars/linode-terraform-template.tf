# Linode Provider definition
provider "linode" {
  token = "${var.token}"
}

# Example node1 tf with vars
resource "linode_instance" "terraform node1" {
        image = "linode/centos7"
        label = "node1tfwithvars"
        group = "Terraform"
        region = "${var.region}"
        type = "g6-nanode-1"
        private_ip = "true"
        authorized_keys = [ "${var.authorized_keys}" ]
        root_pass = "${var.root_pass}"
}

# Example node2 db tf with vars
resource "linode_instance" "terraform node2 DB" {
        image = "linode/centos7"
        label = "node2DBtfwithvars"
        group = "Terraform"
        region = "${var.region}"
        type = "g6-standard-1"
        private_ip = "true"
        authorized_keys = [ "${var.authorized_keys}" ]
        root_pass = "${var.root_pass}"
}
