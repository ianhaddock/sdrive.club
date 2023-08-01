resource "digitalocean_droplet" "acserver-nyc3" {
  image             = "centos-stream-9-x64"
  name              = "acserver-nyc3"
  region            = "nyc3"
  size              = "s-1vcpu-1gb-amd"
  backups           = "false"
  monitoring        = "false"
  ipv6              = "false"
  droplet_agent     = "false"
  graceful_shutdown = "false"

  ssh_keys = [
    data.digitalocean_ssh_key.terraform.id
  ]

  connection {
    host        = self.ipv4_address
    user        = "root"
    type        = "ssh"
    private_key = file(var.pvt_key)
    timeout     = "2m"
  }

  provisioner "remote-exec" {
    inline = ["sleep 25"]
  }

  provisioner "local-exec" {
    command = "ANSIBLE_HOST_KEY_CHECKING=false ansible-playbook -u root --private-key ~/.ssh/ansible -i '${self.ipv4_address},' provision_terraform_acserver.yml"
  }
}

resource "digitalocean_reserved_ip" "acserver-nyc3" {
  region = "nyc3"
}

resource "digitalocean_reserved_ip_assignment" "acserver-nyc3" {
  ip_address = digitalocean_reserved_ip.acserver-nyc3.ip_address
  droplet_id = digitalocean_droplet.acserver-nyc3.id
}

