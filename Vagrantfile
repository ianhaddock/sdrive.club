# dev environment

Vagrant.configure("2") do |config|

  # configure to better match a small VPC instance
  config.vm.provider "vmware_desktop" do |vmware|
    vmware.vmx["memsize"] = "1024"
    vmware.vmx["numvcpus"] = "1"
  end

  config.vm.provision "ansible" do |ansible|  # ansible bootstrap play
    ansible.playbook = "vagrant.yml"
  end

  config.vm.define "acserver" do |acserver|
    acserver.vm.box = "bento/centos-stream-9"
    acserver.vm.hostname = "acserver"
    acserver.vm.define "acserver"  # update default vm definition name
    acserver.vm.network "private_network",  # private for ansible
      ip: "192.168.40.46"
    acserver.vm.network "public_network",  # public network
      use_dhcp_assigned_default_route: true
    acserver.vm.post_up_message = "AC Server"
  end

end
