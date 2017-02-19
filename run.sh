#!/bin/bash
echo "Downloading dependencies"
git clone https://github.com/juancarloscruz/ansible-openldap.git
mv ansible-openldap/ tasks/roles/
echo "Iniciando"
vagrant up --no-provision
echo "Provisionar"
vagrant provision
ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -i .vagrant/provisioners/ansible/inventory/vagrant_ansible_inventory tasks/main.yml
ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -i .vagrant/provisioners/ansible/inventory/vagrant_ansible_inventory tasks/mysql.yml
ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -i .vagrant/provisioners/ansible/inventory/vagrant_ansible_inventory tasks/ldap.yml
echo "Finalizado"
