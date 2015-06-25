# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "ubuntu/trusty64"

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  config.vm.network :private_network, ip: "192.168.10.99"
  config.vm.host_name = "osss.rosedu.local"

  config.vm.synced_folder ".", "/home/vagrant/osss", type: "nfs"
  config.vm.synced_folder "/Users/maria.nita/maria/SkillHub", "/home/vagrant/osss/SkillHub", type: "nfs"

  config.vm.provision :ansible do |ansible|
    ansible.inventory_path = "hosts.ini"
    ansible.playbook = "configure.yml"
    ansible.verbose = "v"
  end

  config.vm.provider :virtualbox do |vb|
    vb.name = "osss"
    vb.customize ["modifyvm", :id, "--memory", "1024"]
    vb.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/v-root", "1"]
  end
end
