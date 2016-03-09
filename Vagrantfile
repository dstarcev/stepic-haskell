Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/wily64"

  config.ssh.forward_agent = true

  config.vm.synced_folder ".", "/vagrant", type: "nfs"

  config.vm.network "private_network", type: "dhcp"
  config.vm.network "forwarded_port", guest: 3000, host: 3000

  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "cm/vagrant.yml"
    ansible.verbose = true
  end

  config.vm.provider "virtualbox" do |v|
    v.memory = 4096
    v.cpus = 4
  end
end
