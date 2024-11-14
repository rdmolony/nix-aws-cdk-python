# `nix-aws-cdk`

> [!WARNING]
> This build fails since on 24-11-14 `<nixpkgs>` is missing upstream dependencies `aws-cdk.asset-awscli-v1`, `aws-cdk.asset-kubectl-v20`, `aws-cdk.asset-node-proxy-agent-v6`, `aws-cdk.cloud-assembly-schema`, `constructs`, `jsii`, `publication`
>
> You can use [`pulumi` or `Terraform/Tofu`](https://search.nixos.org/) instead since these "Infrastructure As Code" tools are defined on `<nixpkgs>`

This repository defines a `Nix` definition for building the `Python` library `numpy-financial` 

## Installation

Install `nix` ...

Via [DeterminateSystems/nix-installer](https://github.com/DeterminateSystems/nix-installer) ...

```sh
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | \
  sh -s -- install
```

Or via [the official installer](https://nix.dev/install-nix.html) ...

```sh
curl -L https://nixos.org/nix/install | sh -s -- --daemon
```

> [!NOTE]
> [`DeterminateSystems/nix-installer` ships with a `nix-uninstall` command if you want to easily remove it](https://github.com/DeterminateSystems/nix-installer/blob/ef23eb4d30c279547bdbe3026a0acaaf8bc680dc/README.md#uninstalling) 

## Build

Via `nix-build` ...

```sh
nix-build
```

Or via `nix repl` ...

```sh
nix repl '<nixpkgs>'
numpy-financial = pkgs.python312Packages.callPackage ./numpy-financial.nix { }
:b numpy-financial
```
