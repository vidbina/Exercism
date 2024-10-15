{ pkgs, lib, config, inputs, ... }:

let
  pkgs-unstable = import inputs.nixpkgs-unstable { system = pkgs.stdenv.system; };
in
{
  packages = with pkgs; [
    exercism
  ];
  languages.gleam = {
    enable = true;
    package = pkgs-unstable.gleam;
  };
}
