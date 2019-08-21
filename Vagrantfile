Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.box_version = "1804.02"
  config.vm.network :forwarded_port, guest: 80, host: 8080
  # config.vm.network "public_network"
  config.vm.hostname = "master"
  config.vm.network "public_network", ip: "192.168.56.107"
end