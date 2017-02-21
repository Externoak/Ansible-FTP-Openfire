# Ansible-FTP-Openfire

![alt tag](http://i.imgur.com/hBQ3rjP.png)

Vagrant with Ansible to create 3 virtual machines with vsftpd + Openfire and Mysql + LDAP on remote hosts. All machines are connect through an internal network although each machine has a public IP address asigned by DHCP.

During the instalation ansible will prompt a series of variables for futher customization.

# How to run:

          git clone https://github.com/Externoak/Ansible-FTP-Openfire.git
          
          cd Ansible-FTP-Openfire/
          
          sh run.sh
