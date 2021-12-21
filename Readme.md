# Post Install Scripts

```shell
mkdir ~/apps
cd ~/apps
```

## Arch
```shell
sudo pacman -S ansible git
ansible-galaxy install kewlfft.aur
ansible-galaxy collection install community.general
```
Then apply desired [Arch install scripts](playbooks-arch/Readme.md)

## Fedora
```shell
sudo dnf install ansible git
ansible-galaxy collection install community.general
```
Then apply desired [Fedora install scripts](playbooks-fedora/Readme.md)

## Ubuntu
```shell
sudo apt install ansible git
ansible-galaxy collection install community.general
```
Then apply desired [Ubuntu install scripts](playbooks-ubuntu/Readme.md)
