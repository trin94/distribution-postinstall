* https://nix-community.github.io/home-manager/index.xhtml
* https://search.nixos.org/packages
* https://hugoreeves.com/posts/2019/nix-home/
* https://codeberg.org/justgivemeaname/.dotfiles

# Installation

* [Install nix](https://nixos.org/download/)
  ```shell
  curl -L https://nixos.org/nix/install > install.sh
  sh install.sh
        
  cat ~/.nix-profile/etc/profile.d/nix.fish
  realpath ~/.nix-profile/etc/profile.d/nix.fish
  ```
* [Install home manager](https://nix-community.github.io/home-manager/index.xhtml#ch-installation)
  Running the commands at some point will start a nix-shell instance. Just exit it using CTRL+D and it will finish
  installing

  ```shell
  nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
  nix-channel --update
  nix-shell '<home-manager>' -A install
  cat ~/.config/home-manager/home.nix
  ```

# Working with home-manager

## Changing configurations

* Edit home manager configuration at `~/.config/home-manager/home.nix`
* To build the configuration
  ```shell
  home-manager build
  ```
* To build and apply the configuration as a new generation
  ```shell
  home-manager switch
  ```

## Rollback

This is not supported out of the box. As a workaround we can do:

* Run the following to determine which generation you wish to roll back to:
   ```shell
   home-manager generations
   ```

* Copy the Nix store path of the generation you chose to roll back to. E.g.
   ```text
   /nix/store/mv960kl9chn2lal5q8lnqdp1ygxngcd1-home-manager-generation
   ```
* Run the activation script from within that generation:
   ```shell
   /nix/store/mv960kl9chn2lal5q8lnqdp1ygxngcd1-home-manager-generation/activate
   ```

## Updating

* Update channel info
  ```shell
  nix-channel --update
  ```
* Update packages
  ```shell
  home-manager switch
  ```

# Emergency

* If nix binaries are suddenly not found:
  ```shell
  source ~/.nix-profile/etc/profile.d/nix.sh
  ```
