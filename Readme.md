# Post Install Scripts

```shell
mkdir ~/apps
cd ~/apps
```

## Fedora

```shell
sudo dnf install ansible git python3-pip
ansible-galaxy collection install community.general
```

Then apply desired [Fedora install scripts](playbooks-fedora/Readme.md)
