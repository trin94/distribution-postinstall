# Post Install Scripts

```shell
mkdir ~/apps
cd ~/apps
```

## Fedora

```shell
sudo dnf install ansible git
ansible-galaxy collection install community.general
```

Then apply desired [Fedora install scripts](playbooks-fedora/Readme.md)
