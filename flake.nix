{
  description = "Nix flake templates";

  outputs = { self }: rec {
    templates = {
      minimal = {
        path = ./minimal;
        description = "Minimal template";
      };
    };

    defaultTemplate = templates.minimal;
  };
}
