{ self, lib, ... }: {
  imports = [
    ./hardware.nix
    ./disko
    ./programs
    ./home/dashalev.nix
    self.modules.nixos.disable-sleep
  ];

  environment.persistence."/nix/persist" = { enable = true; };

  system.stateVersion = lib.mkForce "24.05";
}
