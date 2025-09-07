{ ... }:
{
  imports = [
    ./hardware-configuration.nix
    ./bootloader.nix
    ./xserver.nix
    ./network.nix
    ./pipewire.nix
    ./program.nix
    ./services.nix
    ./system.nix
    ./user.nix
    ./wayland.nix
  ];
}
