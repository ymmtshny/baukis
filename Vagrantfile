Vagrant.configure("2") do |config|
  config.vm.box = "centos/6"
  config.vm.provider :virtualbox do |vb|
    vb.customize [ 'modifyvm', :id, '--memory', 1024 ]
  end
  config.vm.network "forwarded_port", guest: 3000, host: 4000, host_ip: "127.0.0.1"
  config.vm.synced_folder ".", "/vagrant", type: "virtualbox"

  config.vm.provision :shell, inline: "yum -y update"
  config.vm.provision :shell, inline: "yum -y install wget"

  config.vm.provision :shell, path: "provision/chruby.sh"
  config.vm.provision :shell, path: "provision/ruby-install.sh"
  config.vm.provision :shell, path: "provision/ruby.sh"
  config.vm.provision :shell, path: "provision/rails.sh", privileged: false
  config.vm.provision :shell, path: "provision/nodejs.sh"
  config.vm.provision :shell, path: "provision/mysql-server.sh"
  config.vm.provision :shell, path: "provision/postgresql-server.sh"
end
