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

    # ./program/alacritty.nix  # disabled: needs advanced graphics capabilities
    ./program/bat.nix
    ./program/dtrx.nix
    ./program/fastfetch.nix
    ./program/fd.nix
    ./program/fish.nix
    ./program/git.nix
    ./program/hugo.nix
    ./program/jq.nix
    ./program/just.nix
    ./program/lsd.nix
    # ./program/mpv.nix  # disabled: needs advanced graphics capabilities
    ./program/procs.nix
    ./program/ripgrep.nix
    ./program/tokei.nix
    ./program/vim.nix
    ./program/yq.nix
    ./program/yt-dlp.nix
  ];

  nix = {
    package = pkgs.nix;
    settings.experimental-features = [
      "nix-command"
      "flakes"
    ];
  };

  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "elias";
  home.homeDirectory = "/home/elias";
  home.stateVersion = "24.05"; # Please read the comment before changing.

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

  home.sessionVariables = {};

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
