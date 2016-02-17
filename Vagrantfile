Vagrant.configure(2) do |config|
  config.vm.box = "dreamscapes/archlinux"
  config.vm.provision :shell, path: "bootstrap.sh", privileged: false

  config.vm.network "private_network", type: "dhcp"
  config.vm.provider "virtualbox" do |v|
      v.customize [ "guestproperty", "set", :id, "/VirtualBox/GuestAdd/VBoxService/--timesync-set-threshold", 10000 ]
      v.memory = 4000
      v.cpus = 2
  end
end
