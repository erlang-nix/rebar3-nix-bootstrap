rebar3-nix-bootstrap(1) -- sets up a rebar3 project to work in nix
==================================================================

## SYNOPSIS

`rebar3-nix-bootstrap` registry-only
`rebar3-nix-bootstrap` [compile-ports]

## DESCRIPTION

It links the hex registry to a place where rebar3 can find it Itl
links any dependencies into the `_build` dir to a place where
rebar3 can find it. It also updates the `*.app.src` with the
version that is available to from the nix expression.

Definition lists:

* `registry-only`:
       only add the registry to the list

* `compile-ports`
       If the rebar3 project is a ports project you must add this
       to the setup so that the ports bit is correctly generated.
