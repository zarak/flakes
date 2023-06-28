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
      cpp = {
        path = ./cpp;
        description = "C++ template";
      };
    };

    defaultTemplate = self.templates.minimal;

  };
}
