Vagrant.configure("2") do |config|
  config.vm.define "ftpserver" do |ftpserver|
    ftpserver.vm.box = "debian/wheezy64"
    ftpserver.vm.hostname = "ftpserver"

    ftpserver.vm.network :"public_network"
    ftpserver.vm.network "private_network", ip: "192.168.80.3"

   ftpserver.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--memory", 512]
      v.customize ["modifyvm", :id, "--name", "ftpserver"]
    end
    ftpserver.vm.provision :ansible do |ansible|
      ansible.playbook = "tasks/a.yml"
   end
  end

  config.vm.define "DB" do |db|
    db.vm.box = "debian/wheezy64"
    db.vm.hostname = "DB"

    db.vm.network :"public_network"
    db.vm.network "private_network", ip: "192.168.80.4"

   db.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--memory", 512]
      v.customize ["modifyvm", :id, "--name", "DB"]
    end
    db.vm.provision :ansible do |ansible|
      ansible.playbook = "tasks/a.yml"
   end
  end
  config.vm.define "LDAP" do |LDAP|
    LDAP.vm.box = "Ubuntu/trusty64"
    LDAP.vm.hostname = "LDAP"

    LDAP.vm.network :"public_network"
    LDAP.vm.network "private_network", ip: "192.168.80.5"

   LDAP.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--memory", 512]
      v.customize ["modifyvm", :id, "--name", "LDAP"]
    end
    LDAP.vm.provision :ansible do |ansible|
      ansible.playbook = "tasks/a.yml"
   end
  end
end
