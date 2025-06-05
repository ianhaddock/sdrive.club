# dev environment

Vagrant.configure("2") do |config|

  # configure to better match a small VPC instance
  config.vm.provider "vmware_desktop" do |vmware|
    vmware.vmx["memsize"] = "2048"
    vmware.vmx["numvcpus"] = "2"
  end

  Vagrant.configure(2) do |config|
    config.vm.provider :vmware_desktop do |vmware|
      vmware.vmx["ethernet0.pcislotnumber"] = "160"
    end
  end

  Vagrant.configure(2) do |config|
    config.vm.provider :vmware_desktop do |vmware|
      vmware.vmx["ethernet1.pcislotnumber"] = "224"
    end
  end

  Vagrant.configure(2) do |config|
    config.vm.provider :vmware_desktop do |vmware|
      vmware.vmx["ethernet2.pcislotnumber"] = "256"
    end
  end


  config.vm.provision "ansible" do |ansible|  # ansible bootstrap play
    ansible.playbook = "play-provision.yml"
  end

  config.vm.define "acserver" do |acserver|
    acserver.vm.box = "bento/centos-stream-9"
    acserver.vm.hostname = "acdev"
    acserver.vm.define "acserver"  # update default vm definition name
    acserver.vm.network "private_network",  # private for ansible
      ip: "192.168.40.47"
    acserver.vm.network "public_network",  # public network
      use_dhcp_assigned_default_route: true
    acserver.vm.post_up_message = "AC Server"
  end

end
