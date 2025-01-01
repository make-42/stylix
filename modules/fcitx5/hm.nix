{
  config,
  lib,
  ...
<<<<<<< ours
}:
let
  # Adapted from https://github.com/sanweiya/fcitx5-mellow-themes under the BSD 2 license (compatible with this project's license (MIT))
=======
}: let
>>>>>>> theirs
  theme = config.lib.stylix.colors {
    template = ./theme.conf.mustache;
    extension = "conf";
  };
  highlight = config.lib.stylix.colors {
    template = ./highlight.svg.mustache;
    extension = "svg";
  };
  panel = config.lib.stylix.colors {
    template = ./panel.svg.mustache;
    extension = "svg";
  };
<<<<<<< ours
in
{
  options.stylix.targets.fcitx5.enable =
    config.lib.stylix.mkEnableTarget "fcitx5" true;

  config =
    lib.mkIf (config.stylix.enable && config.stylix.targets.fcitx5.enable)
      {
        xdg.dataFile = {
          "fcitx5/themes/stylix/highlight.svg".source = highlight;
          "fcitx5/themes/stylix/panel.svg".source = panel;
          "fcitx5/themes/stylix/theme.conf".source = theme;
        };
      };
=======
in {
  options.stylix.targets.fcitx5.enable =
    config.lib.stylix.mkEnableTarget
    "fcitx5"
    true;

  config =
    lib.mkIf (
      config.stylix.enable
      && config.stylix.targets.fcitx5.enable
      #&& config.i18n.inputMethod.enable
      #&& (config.i18n.inputMethod.type == "fcitx5")
    ) {
      xdg.dataFile."fcitx5/themes/stylix/theme.conf".source = theme;
      xdg.dataFile."fcitx5/themes/stylix/panel.svg".source = panel;
      xdg.dataFile."fcitx5/themes/stylix/highlight.svg".source = highlight;
    };
>>>>>>> theirs
}
