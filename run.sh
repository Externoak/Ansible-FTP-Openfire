#!/bin/bash
echo "Iniciando"
vagrant up --no-provision
echo "Provisionar"
vagrant provision
ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -i .vagrant/provisioners/ansible/inventory/vagrant_ansible_inventory tasks/main.yml
ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -i .vagrant/provisioners/ansible/inventory/vagrant_ansible_inventory tasks/mysql.yml
echo "Finalizado"
