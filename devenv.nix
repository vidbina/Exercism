{ pkgs, lib, config, inputs, ... }:

{
  packages = with pkgs; [
    exercism
  ];
  languages.gleam.enable = true;
}
