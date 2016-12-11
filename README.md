# cloudsble
ansible run installation for cloudera

<b>what this is</b>
this project installs the Cloudera Manager (currently 5.x) on a cluster of servers 

<b>prereqs</b>
- have 3 or more CentOS servers (or virtual machines). Ensure SELinux is disabled.
- ensure the inventory file in this project is updated
- ensure you have password-less access to all the servers. this ansible command should succeed: ansible all -m ping
- change the hosts file
- change the server_host variable inside the config.ini
- change all vars in the default.yml

<b>how to run</b>
- ansible-playbook playbooks/cloudera.yml --u vagrant -i inventory --ask-sudo-pass --skip-tags master
- ansible-playbook playbooks/cloudera.yml --u vagrant -i inventory --ask-sudo-pass --tags master --limit 172.25.1.33

