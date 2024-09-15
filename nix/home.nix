{
  config,
  pkgs,
  lib,
  ...
}:

{
  nixpkgs.config.allowUnfree = true;

  imports = [
    ./fonts.nix

    # ./program/alacritty.nix
    ./program/bat.nix
    ./program/dtrx.nix
    ./program/fastfetch.nix
    ./program/fd.nix
    ./program/fish.nix
    ./program/git.nix
    ./program/helix.nix
    ./program/hugo.nix
    ./program/jq.nix
    ./program/just.nix
    ./program/lsd.nix
    ./program/mpv.nix
    ./program/procs.nix
    ./program/ripgrep.nix
    ./program/tokei.nix
    ./program/yq.nix
    ./program/yt-dlp.nix
  ];

  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "elias";
  home.homeDirectory = "/home/elias";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "24.05"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = with pkgs; [
    # # It is sometimes useful to fine-tune packages, for example, by applying
    # # overrides. You can do that directly here, just don't forget the
    # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
    # # fonts?
    # (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })

    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')

    nixfmt-rfc-style # Official formatter for Nix code

    # amberol # --FLATPAK-- # A small and simple sound and music player
    discord # All-in-one cross-platform voice and text chat for gamers
    eartag # Simple music tag editor
    google-chrome # Freeware web browser developed by Google
    # teamspeak_client # --FLATPAK-- # The TeamSpeak voice communication tool
    hexchat # A popular and easy to use graphical IRC (chat) client
    # loupe # --FLATPAK-- # A simple image viewer application written with GTK4 and Rust
    # gnome-text-editor # --FLATPAK-- # A Text Editor for GNOME
    # snapshot --FLATPAK-- # Take pictures and videos on your computer, tablet, or phone
    # baobab # --DNF-- Graphical application to analyse disk usage in any GNOME environment
    # firefox-unwrapped # A web browser built from Firefox source tree
    # _1password # 1Password command-line tool
    # _1password-gui # Multi-platform password manager

    # python312 # A high-level dynamically-typed programming language
    # python312Packages.pyside6
    # jetbrains-toolbox
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/elias/etc/profile.d/hm-session-vars.sh

  home.sessionVariables = {
    EDITOR = "hx";
    LD_LIBRARY_PATH = "${pkgs.stdenv.cc.cc.lib}/lib";
  };

  home.sessionPath = [
    "$HOME/.local/bin"
    "$HOME/.cargo/bin"
  ];

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  fonts.fontconfig.enable = true;

  #  programs._1password.enable = true;
  #  programs._1password-gui = {
  #    enable = true;
  #    # Certain features, including CLI integration and system authentication support,
  #    # require enabling PolKit integration on some desktop environments (e.g. Plasma).
  #    polkitPolicyOwners = [ "elias" ];
  #  };

}
