# Arch

This is my personal collection of applications I want to install on my Arch machines.  
Arch needs to be installed already.

## 10 - GNOME Desktop Environment

In the root directory of this repository, run:

```shell
ansible-playbook --ask-become-pass playbooks-arch/20-gnome.yml
```

It will ask for the root password.

## 20 – Application Sources (Paru, Flatpak)

In the root directory of this repository, run:

```shell
ansible-playbook --ask-become-pass playbooks-arch/10-application-sources.yml
```

It will ask for the root password.

## 21 - Terminal Applications

In the root directory of this repository, run:

```shell
ansible-playbook --ask-become-pass playbooks-arch/21-apps-terminal.yml
```

It will ask for the root password.

## 22 - Graphical Applications

In the root directory of this repository, run:

```shell
ansible-playbook --ask-become-pass playbooks-arch/22-apps-graphical.yml
```

It will ask for the root password.

## 30 - Dotfiles Configuration

* Make sure that ssh is properly set up (private key at the default location etc).
* This script assumes that bash is the default shell
* **Attention**: This script will override the `.bashrc` file

In the root directory of this repository, run:

```shell
ansible-playbook --ask-become-pass playbooks-arch/30-dotfiles.yml
```

It will ask for the root password.

## 60 - Fonts

In the root directory of this repository, run:

```shell
ansible-playbook --ask-become-pass playbooks-arch/60-fonts.yml
```

It will ask for the root password.

## 70 - Utilities

In the root directory of this repository, run:

```shell
ansible-playbook --ask-become-pass playbooks-arch/70-utilities.yml
```

It will ask for the root password.
