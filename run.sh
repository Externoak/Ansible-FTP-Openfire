#!/bin/bash
echo "Iniciando"
vagrant up --no-provision
echo "Provisionar"
vagrant provision
ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -i .vagrant/provisioners/ansible/inventory/vagrant_ansible_inventory task/main.yml
echo "Finalizado"
