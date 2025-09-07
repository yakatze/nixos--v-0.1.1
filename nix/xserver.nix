{ username, ... }:
{
  services = {
    xserver = {
      enable = true;
      xkb.layout = "us, ru";
    };

    displayManager.autoLogin = {
      enable = true;
      user = "${username}";
    };
    libinput = {
      enable = true;
    };
  };
  
# Enable the GNOME Desktop Environment.
   #services.xserver.displayManager.gdm.enable = true;
   #services.xserver.desktopManager.gnome.enable = true;

}
