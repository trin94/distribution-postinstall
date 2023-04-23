# Fedora

**Attention**: Installing dotfiles will override the `.bashrc` file

```shell
ansible-playbook --ask-become-pass playbooks-fedora/00-distribution.yml
ansible-playbook --ask-become-pass playbooks-fedora/10-gnome.yml
ansible-playbook --ask-become-pass playbooks-fedora/20-apps-terminal.yml
ansible-playbook --ask-become-pass playbooks-fedora/30-apps-graphical.yml
ansible-playbook --ask-become-pass playbooks-fedora/40-dotfiles.yml
ansible-playbook --ask-become-pass playbooks-fedora/50-utilities.yml
ansible-playbook --ask-become-pass playbooks-fedora/60-fonts.yml

ansible-playbook --ask-become-pass playbooks-fedora/80-config-cli-tools.yml

ansible-playbook --ask-become-pass playbooks-fedora/90-apps-docker.yml
ansible-playbook --ask-become-pass playbooks-fedora/91-apps-node.yml
```

Gotta supply the root password.
