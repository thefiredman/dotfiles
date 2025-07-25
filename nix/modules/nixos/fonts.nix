{
  flake.modules.nixos.fonts = { lib, config, pkgs, ... }: {
    fonts = {
      enableDefaultPackages = false;
      packages = with pkgs; [
        corefonts
        iosevka
        inter
        nerd-fonts.symbols-only
        twitter-color-emoji
      ];

      fontconfig = {
        enable = true;
        hinting.enable = false;
        defaultFonts = {
          serif = [ "Inter" ];
          sansSerif = [ "Inter" ];
          monospace = [ "Iosevka" "Symbols Nerd Font Mono" ];
          emoji = [ "Twitter Color Emoji" ];
        };
      };
    };
  };
}
