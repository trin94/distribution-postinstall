{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    helix # A post-modern modal text editor
  ];

  programs.helix = {
    enable = true;
    settings = {
      theme = "onedark";
    };
  };

}
