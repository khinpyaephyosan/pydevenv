Vagrant.configure("2") do |config|
  config.vm.box = "LillianPhyoe/lillianCent7"
  config.vm.box_version = "1"

  config.vm.define "mydevenv" do |mydevenv|
    mydevenv.vm.network :private_network, ip: "192.168.21.1"
    mydevenv.vm.hostname = "mydevenv"
    mydevenv.vm.synced_folder ".", "/vagrant", disabled: true
    mydevenv.vm.provision :shell, privileged: true, path: "diffSnake4Lab.sh"
  end

end