resource "digitalocean_droplet" "test" {
  image              = "centos-stream-9-x64"
  name               = "test"
  region             = "sfo3"
  size               = "s-1vcpu-1gb"
  private_networking = true
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
    command = "ANSIBLE_HOST_KEY_CHECKING=false ansible-playbook -u root --private-key ~/.ssh/ansible -i '${self.ipv4_address},' vagrant.yml"
  }
}

