#! /bin/bash
echo "Entering from ansible" >> /tmp/ansible.txt
systemctl enable docker
systemctl start docker
systemctl status docker >> /tmp/ansible.txt
echo "Leaving from asnible" >> /tmp/ansible.txt