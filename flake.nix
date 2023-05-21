{
  description = "Nix flake templates";

  outputs = { self }: {
    templates = {
      minimal = {
        path = ./minimal;
      };
    };
  };
}
