let
  pkgs = import <nixpkgs> { };
in
{
  numpy-financial = pkgs.python312Packages.callPackage ./aws-cdk-python.nix { };
}