{ ... }:
{
  imports = [
    ./aseprite/aseprite.nix           # pixel art editor
    ./bat.nix                         # better cat command
    #./browser.nix                     # firefox based browser
    ./btop.nix                        # resouces monitor 
    ./cava.nix                        # audio visualizer
    ./discord.nix                     # discord
    ./fastfetch.nix                   # fetch tool
    ./flow.nix                        # terminal text editor
    ./fzf.nix                         # fuzzy finder
    ./ghostty.nix                     # terminal
    ./git.nix                         # version control
    ./gnome.nix                       # gnome apps
    ./gtk.nix                         # gtk theme
    ./hyprland                        # window manager
    #./lazygit.nix
    ./micro.nix                       # nano replacement
    ./nemo.nix                        # file manager
    ./nix-search/nix-search.nix       # TUI to search nixpkgs
    ./p10k/p10k.nix
    ./packages                        # other packages
    ./rofi.nix                        # launcher
    ./scripts/scripts.nix             # personal scripts
    ./ssh.nix                         # ssh config
    ./superfile/superfile.nix         # terminal file manager
    ./swaylock.nix                    # lock screen
    ./swayosd.nix                     # brightness / volume wiget
    ./swaync/swaync.nix               # notification deamon
    #./viewnior.nix                    # image viewer
    ./vscodium                        # vscode fork
    ./waybar                          # status bar
    ./waypaper.nix                    # GUI wallpaper picker
    ./xdg-mimes.nix                   # xdg config
    ./zsh                             # shell
  ];
}
