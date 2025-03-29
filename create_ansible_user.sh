sudo useradd -m -s /bin/bash ansible
yes | sudo -u ansible ssh-keygen -t rsa -b 4096 -C "email@domain.com" -f /home/ansible/.ssh/id_rsa -N ""
