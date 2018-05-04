{pkgs, ...}:

{
  home.file = {
    ".notion/cfg_notion.lua".source = notion/cfg_notion.lua;
    ".notion/cfg_notioncore.lua".source = notion/cfg_notioncore.lua;
    ".notion/cfg_tiling.lua".source = notion/cfg_tiling.lua;
    ".notion/cfg_statusbar.lua".source = notion/cfg_statusbar.lua;
    ".notion/statusbar_wsname.lua".source = notion/statusbar_wsname.lua;
    ".groovy/grapeConfig.xml".source = groovy/grapeConfig.xml;
    ".Xresources".source = ./Xresources;
  };

  home.packages = with pkgs; [
    ant
    chromium
    curl
    dropbox
    firefox
    gnome3.gedit
    git
    gitAndTools.gitflow
    gnome_mplayer
    gnupg
    gradle
    graphviz
    htop
    inkscape
    irssi
    jbake
    libnotify
    libreoffice
    lsof
    lynx
    mplayer
    multimc
    mysqlWorkbench
    netbeans
    nixops
    nox
    nix-repl
    obnam
    obs-studio
    pidgin
    psmisc
    pwgen
    python
    python3
    python35Packages.youtube-dl
    python36Packages.xdot
    screen

    tdesktop
    tmux
    travis
    tree
    unzip
    utillinux
    vim
    virtualbox
    visualvm
    vlc
    xbindkeys
    xfontsel
    xorg.appres
    xorg.xclock
    xorg.xev
    xorg.xmodmap
    zip


    jetbrains.idea-community
  ];

  programs.home-manager = {
    enable = true;
    path = https://github.com/rycee/home-manager/archive/release-18.03.tar.gz;
  };
}
