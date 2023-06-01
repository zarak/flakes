{
  description = "Nix flake templates";

  outputs = { self }: {
    templates = rec {
      minimal = {
        path = ./minimal;
        description = "Minimal template";
      };
      haskell = {
        path = ./haskell;
        description = "Haskell template";
      };
    };

    defaultTemplate = templates.minimal;
  };
}
