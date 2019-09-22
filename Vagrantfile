Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.box_version = "1804.02"
  config.vm.hostname = "master"
  config.vm.network :forwarded_port, guest: 80, host: 8080
  config.vm.network "private_network", ip: "192.168.56.245"
  config.vm.network "public_network", ip: "192.168.56.107"
  config.vm.provision "shell", inline: "sudo chmod 777 -R /tmp"
  config.vm.provision "file", source: "Vesperr/", destination: "/tmp/test"
  config.vm.synced_folder "Vesperr/", "/tmp/test1", nfs: true
  config.vm.provision "shell", path: "provision.sh"
end