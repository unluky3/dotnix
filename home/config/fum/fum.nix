{ lib, ... }:
let
  confDir = ./fum;
in
{
  home.activation.fum = lib.hm.dag.entryAfter ["writeBoundary"] ''
    ln -sf ${confDir} $HOME/.config/fum
  '';
}
