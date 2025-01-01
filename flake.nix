{
  inputs = {
    github.url = "github:Myxogastria0808/zola-mytutorial/main";
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  };
  outputs = inputs: {
    inputs.nixpkgs.mkShell = {
      packages = with inputs.pkgs; [ zola ];
    };
  };
}
