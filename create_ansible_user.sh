#!/bin/bash

# Script to create a user named 'ansible', configure SSH access, and grant sudo privileges

# This script:
# - Creates a new user named 'ansible' with a home directory and sets /bin/bash as the shell.
# - Sets up SSH access for the 'ansible' user by adding the provided SSH key to the authorized_keys file.
# - Creates a directory for sudoers configuration and grants the 'ansible' user passwordless sudo access.

# Usage:
# Run this script as a superuser to set up the 'ansible' user with SSH and sudo privileges.

# Author: Matheus Silva Soares
# Github: https://github.com/Matheus-git/ansible-workspace-role
#

sudo useradd -m -s /bin/bash ansible
mkdir -p /home/ansible/.ssh
echo "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAICQdkge/GgNwHJAdWtThrxqRKSvjtdvx9EgLy+nB3gk1 mathiew0@gmail.com" >> /home/ansible/.ssh/authorized_keys
mkdir -p /etc/sudoers.d/
touch /etc/sudoers.d/ansible
echo "ansible ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/ansible
