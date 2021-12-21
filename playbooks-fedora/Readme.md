# Fedora

This is my personal collection of setup scripts for my Fedora machines.  
Fedora needs to be installed already.

## 00 - Distribution

In the root directory of this repository, run:

```shell
ansible-playbook --ask-become-pass playbooks-fedora/00-distribution.yml
```

It will ask for the root password.

## 10 – Application Sources

In the root directory of this repository, run:

```shell
ansible-playbook --ask-become-pass playbooks-fedora/10-application-sources.yml
```

It will ask for the root password.

## 20 - GNOME

In the root directory of this repository, run:

```shell
ansible-playbook --ask-become-pass playbooks-fedora/20-gnome.yml
```

It will ask for the root password.

## 21 - Terminal Applications

In the root directory of this repository, run:

```shell
ansible-playbook --ask-become-pass playbooks-fedora/21-apps-terminal.yml
```

It will ask for the root password.

## 22 - Graphical Applications

In the root directory of this repository, run:

```shell
ansible-playbook --ask-become-pass playbooks-fedora/22-apps-graphical.yml
```

It will ask for the root password.

## 30 - Dotfiles Configuration

**Attention**: This script will override the `.bashrc` file

In the root directory of this repository, run:

```shell
ansible-playbook --ask-become-pass playbooks-fedora/30-dotfiles.yml
```

It will ask for the root password.

## 60 - Fonts

In the root directory of this repository, run:

```shell
ansible-playbook --ask-become-pass playbooks-fedora/60-fonts.yml
```

It will ask for the root password.

## 70 - Utilities

In the root directory of this repository, run:

```shell
ansible-playbook --ask-become-pass playbooks-fedora/70-utilities.yml
```

It will ask for the root password.
