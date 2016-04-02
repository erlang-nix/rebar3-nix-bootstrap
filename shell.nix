{ pkgs ? import <nixpkgs> {} }:

with pkgs;

let

  f = { stdenv, erlang }:
      stdenv.mkDerivation {
        name = "rebar3-nix-bootstrap";
        version = "0.0.3";
        src = ./.;
        buildInputs = [ erlang ];
      };
  drv = callPackage f { };

in
 drv
