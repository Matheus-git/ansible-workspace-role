sudo useradd -m -s /bin/bash ansible
mkdir -p /home/ansible/.ssh
echo "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAICQdkge/GgNwHJAdWtThrxqRKSvjtdvx9EgLy+nB3gk1 mathiew0@gmail.com" >> /home/ansible/.ssh/authorized_keys
mkdir -p /etc/sudoers.d/
touch /etc/sudoers.d/ansible
echo "ansible ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/ansible
