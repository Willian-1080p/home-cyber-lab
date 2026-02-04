ansible-playbook -i inventory/lab.ini playbooks/brute-force-ssh.yml

ansible-playbook -i inventory/lab.ini playbooks/response/malware-response-linux.yml

ansible-playbook -i inventory/lab.ini playbooks/response/malware-response-windows.yml
