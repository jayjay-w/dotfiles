{ inputs, pkgs, ... }:

let
  # Import the HyprPanel package from the flake inputs
  hyprpanel = inputs.hyprpanel.packages.${pkgs.system}.hyprpanel;
in
{
  # Add HyprPanel to the home.packages list
  home.packages = [
    hyprpanel
  ];

  # Add additional configurations for HyprPanel if needed
}

