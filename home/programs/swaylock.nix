{ ... }: let
  name = "hervyqa";
in {
  home-manager = {
    users.${name} = {
      programs = {
        swaylock = {
          enable = true;
          settings = {
            bs-hl-color = "F2D5CF";
            caps-lock-bs-hl-color = "F2D5CF";
            caps-lock-key-hl-color = "A6D189";
            color = "303446";
            inside-caps-lock-color = "00000000";
            inside-clear-color = "00000000";
            inside-color = "00000000";
            inside-ver-color = "00000000";
            inside-wrong-color = "00000000";
            key-hl-color = "A6D189";
            layout-bg-color = "00000000";
            layout-border-color = "00000000";
            layout-text-color = "C6D0F5";
            line-caps-lock-color = "00000000";
            line-clear-color = "00000000";
            line-color = "00000000";
            line-ver-color = "00000000";
            line-wrong-color = "00000000";
            ring-caps-lock-color = "EF9F76";
            ring-clear-color = "F2D5CF";
            ring-color = "BABBF1";
            ring-ver-color = "8CAAEE";
            ring-wrong-color = "EA999C";
            separator-color = "00000000";
            text-caps-lock-color = "EF9F76";
            text-clear-color = "F2D5CF";
            text-color = "C6D0F5";
            text-ver-color = "8CAAEE";
            text-wrong-color = "EA999C";
            font = "Fira Code";
            font-size = 12;
            disable-caps-lock-text = true;
            ignore-empty-password = true;
            indicator = true;
            indicator-caps-lock = true;
            indicator-radius = 50;
            indicator-thickness = 10;
          };
        };
      };
    };
  };
}
