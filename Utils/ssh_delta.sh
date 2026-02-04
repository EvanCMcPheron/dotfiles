#! /bin/bash
if [ $TERM == "xterm-kitty" ]; then
  kitty +kitten ssh emcpheron@login.delta.ncsa.illinois.edu
else
  ssh emcpheron@login.delta.ncsa.illinois.edu
fi
