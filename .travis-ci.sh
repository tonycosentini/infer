opam init --no-setup
opam update
opam pin add --yes --no-action .
opam install --deps-only infer
opam config exec -- ./autogen.sh
opam config exec -- ./configure
opam config exec -- make java
