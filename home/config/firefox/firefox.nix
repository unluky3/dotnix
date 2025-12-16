{ pkgs, lib, ... }:

let
  cssSource = ./userChrome.css;
in
{
  home.packages = [ pkgs.firefox ];

  home.activation.firefoxCSS = lib.hm.dag.entryAfter ["firefox"] ''
    # Find default profile
    profile=$(grep -E '^Path=' $HOME/.mozilla/firefox/profiles.ini | head -n1 | cut -d'=' -f2)
    chromeDir="$HOME/.mozilla/firefox/$profile/chrome"
    mkdir -p "$chromeDir"
    ln -sf ${cssSource} "$chromeDir/userChrome.css"
  '';
}

