{pkgs, ...}:

{
  home.file = {
    ".notion/cfg_notion.lua".source = notion/cfg_notion.lua;
    ".notion/cfg_notioncore.lua".source = notion/cfg_notioncore.lua;
    ".notion/cfg_tiling.lua".source = notion/cfg_tiling.lua;
    ".notion/cfg_statusbar.lua".source = notion/cfg_statusbar.lua;
    ".notion/statusbar_wsname.lua".source = notion/statusbar_wsname.lua;
    ".groovy/grapeConfig.xml".source = groovy/grapeConfig.xml;
  };

  home.packages = with pkgs; [
    jetbrains.idea-community
  ];

  programs.home-manager = {
    enable = true;
    path = https://github.com/rycee/home-manager/archive/release-18.03.tar.gz;
  };
}
