wget https://raw.githubusercontent.com/ocaml/ocaml-travisci-skeleton/master/.travis-opam.sh
bash -ex .travis-opam.sh

export OPAMYES=1
eval `opam config env`

opam init --no-setup
opam update
opam pin add --yes --no-action .
opam install --deps-only infer
opam config exec -- ./autogen.sh
opam config exec -- ./configure
opam config exec -- make java
