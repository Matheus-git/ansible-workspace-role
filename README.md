# Workspace role

![Ansible](https://img.shields.io/badge/ansible-%231A1918.svg?style=for-the-badge&logo=ansible&logoColor=white) ![Bash Script](https://img.shields.io/badge/bash_script-%23121011.svg?style=for-the-badge&logo=gnu-bash&logoColor=white) ![Ubuntu](https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=white)

Setting up a remote workspace environment using Ansible roles

**This project was developed in just a few hours as part of a training exercise over the weekend.**

## Features

- Updates and installs new general packages
- Installs and configures the nvim editor
- Configures git
- Creates a user named matheus (editable in roles/workspace/vars/main.yml)
- Configures the authorization file for SSH communication for the created user
- Complete Docker installation

## Requirements

- ansible-playbook

## Usage

1. Clone the repository:
    ```
      git clone https://github.com/Matheus-git/ansible-workspace-role.git
    ```
2. Run the script on the **remote** to create the ansible user:
    ```
      sudo bash create_ansible_user.sh
    ```
3. Add host(s) to the inventory.yml

4. Edit roles/workspace/vars/main.yml ( password: password )

5. Run the playbook:
    ```
      ansible-playbook -i inventory.yml workspace_playbook.yml
    ```

## Contributing

Contributions are welcome! Please open an issue or submit a pull request for any improvements or bug fixes.

## 📝 License

This project is open-source under the MIT License.
