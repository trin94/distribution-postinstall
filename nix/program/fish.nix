{ config, pkgs, ... }:

{

  home.packages = with pkgs; [
    #bash # GNU Bourne-Again Shell, the de facto standard shell on Linux
    fish # Smart and user-friendly command line shell
    starship # A minimal, blazing fast, and extremely customizable prompt for any shell
  ];

  #programs.bash = {
  # enable = true;
  #initExtra = ''
  # fish
  #'';
  #};

  programs.starship = {
    enable = true;
    enableFishIntegration = true;
  };

  programs.fish = {
    enable = true;

    interactiveShellInit = ''
      set fish_greeting
    '';

    shellAliases = {
      "shutdown" = "sudo shutdown now";
      "restart" = "sudo restart now";

      "dnf" = "dnf -C";
      "k" = "kubectl";
      "kctx" = "kubectx";
      "kns" = "kubens";
      "qmltestrunner" = "qmltestrunner-qt6";
      "vim" = "nvim";

      "ll" = "lsd -alA";
      "ls" = "lsd -l";
      "lt" = "lsd --tree";
    };

    functions = {
      nup = {
        description = "Update nix packages";
        body = "nix-channel --update && home-manager switch";
      };

      envpp = {
        description = "Pretty print environment variables";
        body = "env | sort | sed 's/=/%/' | column --table --separator '%' --output-width 150 --table-noheadings --table-columns C1,C2 --table-wrap C2";
      };

      ytd = {
        description = "Download YT videos";
        body = ''
          yt-dlp -f bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best -o '%(upload_date)s - %(channel)s - %(id)s - %(title)s.%(ext)s' \
           --sponsorblock-mark "all" \
           --geo-bypass \
           --sub-langs 'all' \
           --embed-subs \
           --embed-metadata \
           --convert-subs 'srt' \
           $argv
        '';
      };

    };

  };

}
