{ pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;
  home.packages = with pkgs; [
    fum
    blender
    comma
    youtube-music
    image-roll
    eza
    fum
    yt-dlp
    figlet
    obs-studio
    mpv
    tty-clock
    lavat
    sl
    nitch
    cbonsai
    unimatrix
    cmatrix
    catppuccinifier-cli
    catppuccinifier-gui
    kitty-themes
    amberol
    nautilus
    wf-recorder
    kittysay
    tree
    playerctl
    winboat
    steam
    docker-compose
    docker
  ];
}
