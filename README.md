# Ansible-FTP-Openfire

![alt tag](http://i.imgur.com/hBQ3rjP.png)

Vagrant with Ansible to create 3 virtual machines with vsftpd + openfire and MySQL + LDAP on remote hosts. All machines are connected through an internal network although each machine has a public IP address assigned by DHCP.

During the installation ansible will prompt a series of variables for futher customization.

# How to run:

          git clone https://github.com/Externoak/Ansible-FTP-Openfire.git
          
          cd Ansible-FTP-Openfire/
          
          sh run.sh
          
          The password for root or admin that is not especified by any variable is "vagrant"
          
          LDAP domain: dc=nodomain
          To access LDAP server from remote client use the IP assinged by DHCP and cn=admin,dc=nodomain. 
          Password to LDAP admin will be the one specified by the user during installation.
          

By default vsftpd will only be allowing login to users registered at LDAP server.

