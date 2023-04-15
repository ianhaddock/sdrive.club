# dev environment

Vagrant.configure("2") do |config|

  # configure to better match a small VPC instance
  config.vm.provider "vmware_desktop" do |vmware|
    vmware.vmx["memsize"] = "1024"
    vmware.vmx["numvcpus"] = "1"
  end

  config.vm.provision "ansible" do |ansible|  # ansible bootstrap play
    ansible.playbook = "Ansible/vagrant.yml"
  end

  config.vm.define "west" do |west|
    west.vm.box = "bento/centos-7.9"
    west.vm.hostname = "west"
    west.vm.define "west" # update default vm definition name
    west.vm.hostname = "west"
    west.vm.network "private_network", # private for ansible
      ip: "192.168.40.40"
    west.vm.network "public_network", # public network
      use_dhcp_assigned_default_route: true
    west.vm.post_up_message = "West server runs AC backup."
  end

  config.vm.define "east" do |east|
    east.vm.box = "bento/centos-7.9"
    east.vm.hostname = "east"
    east.vm.define "east" # update default vm definition name
    east.vm.hostname = "east"
    east.vm.network "private_network", # private for ansible
      ip: "192.168.40.40"
    east.vm.network "public_network", # public network
      use_dhcp_assigned_default_route: true
    east.vm.post_up_message = "East server runs ACSM."
  end

end
