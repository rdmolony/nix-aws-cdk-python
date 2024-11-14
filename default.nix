let
  pkgs = import <nixpkgs> { };
in
{
  aws-cdk = pkgs.python312Packages.callPackage ./aws-cdk.nix { };
}