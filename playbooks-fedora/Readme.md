# Fedora

This is my personal collection of setup scripts for my Fedora machines.  
Fedora needs to be installed already.

## 00 - Distribution

In the root directory of this repository, run:

```shell
ansible-playbook --ask-become-pass playbooks-fedora/00-distribution.yml
```

It will ask for the root password.

## 10 - GNOME

In the root directory of this repository, run:

```shell
ansible-playbook --ask-become-pass playbooks-fedora/10-gnome.yml
```

It will ask for the root password.

## 20 - Terminal Applications

In the root directory of this repository, run:

```shell
ansible-playbook --ask-become-pass playbooks-fedora/20-apps-terminal.yml
```

It will ask for the root password.

## 30 - Graphical Applications

In the root directory of this repository, run:

```shell
ansible-playbook --ask-become-pass playbooks-fedora/30-apps-graphical.yml
```

It will ask for the root password.

## 40 - Dotfiles

**Attention**: This script will override the `.bashrc` file

In the root directory of this repository, run:

```shell
ansible-playbook --ask-become-pass playbooks-fedora/40-dotfiles.yml
```

It will ask for the root password.

## 50 - Utilities

In the root directory of this repository, run:

```shell
ansible-playbook --ask-become-pass playbooks-fedora/50-utilities.yml
```

It will ask for the root password.

## 60 - Fonts

In the root directory of this repository, run:

```shell
ansible-playbook --ask-become-pass playbooks-fedora/60-fonts.yml
```

It will ask for the root password.
