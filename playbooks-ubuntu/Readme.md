# Ubuntu

This is my personal collection of applications I want to install on my Ubuntu machines.  
Fedora needs to be installed already.

## 10 - GNOME App Cleanup

In the root directory of this repository, run:

```shell
ansible-playbook --ask-become-pass playbooks-ubuntu/20-gnome.yml
```

It will ask for the root password.

## 20 – Application Sources

In the root directory of this repository, run:

```shell
ansible-playbook --ask-become-pass playbooks-ubuntu/10-application-sources.yml
```

It will ask for the root password.

## 21 - Terminal Applications

In the root directory of this repository, run:

```shell
ansible-playbook --ask-become-pass playbooks-ubuntu/21-apps-terminal.yml
```

It will ask for the root password.

## 22 - Graphical Applications

In the root directory of this repository, run:

```shell
ansible-playbook --ask-become-pass playbooks-ubuntu/22-apps-graphical.yml
```

It will ask for the root password.

## 30 - Dotfiles Configuration

* Make sure that ssh is properly set up.
  On a fresh machine the following steps need to be executed:
    * Private key at the default location
    * Add identity
      ```shell
      sudo chmod -R 700 ~/.ssh 
      ssh-add
      ```

* This script assumes that bash is the default shell
* **Attention**: This script will override the `.bashrc` file

In the root directory of this repository, run:

```shell
ansible-playbook --ask-become-pass playbooks-ubuntu/30-dotfiles.yml
```

It will ask for the root password.

## 60 - Fonts

In the root directory of this repository, run:

```shell
ansible-playbook --ask-become-pass playbooks-ubuntu/60-fonts.yml
```

It will ask for the root password.

[comment]: <> (## 70 - Utilities)

[comment]: <> (In the root directory of this repository, run:)

[comment]: <> (```shell)

[comment]: <> (ansible-playbook --ask-become-pass ubuntu-playbooks/70-utilities.yml)

[comment]: <> (```)

[comment]: <> (It will ask for the root password.)
