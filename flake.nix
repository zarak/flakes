{
  description = "Nix flake templates";

  outputs = { self }: {

    templates = {
      minimal = {
        path = ./minimal;
        description = "Minimal template";
      };
      haskell = {
        path = ./haskell;
        description = "Haskell template";
      };
    };

    defaultTemplate = self.templates.minimal;

  };
}
