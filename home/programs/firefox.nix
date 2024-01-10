{
  config,
  pkgs,
  ...
}: let
  name = "hervyqa";
in {
  home-manager = {
    users.${name} = {
      programs = {
        firefox = {
          enable = false;
          profiles = {
            ${name} = {
              search = {
                default = "DuckDuckGo";
                privateDefault = "DuckDuckGo";
              };
            };
          };
          policies = {
            CaptivePortal = false;
            DisableAppUpdate = true;
            DisableFirefoxAccounts = true;
            DisableFirefoxStudies = true;
            DisablePocket = true;
            DisableSetDesktopBackground = true;
            DisableTelemetry = true;
            FirefoxHome = {
              Pocket = false;
              Snippets = false;
            };
            ShowHomeButton = false;
            UserMessaging = {
              ExtensionRecommendations = false;
              SkipOnboarding = true;
            };
          };
        };
      };
    };
  };
}
