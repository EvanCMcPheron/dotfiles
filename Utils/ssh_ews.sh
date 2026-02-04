#! /bin/bash
if [ $TERM == "xterm-kitty" ]; then
  kitty +kitten ssh -CY evancm4@linux.ews.illinois.edu
else
  ssh -CY evancm4@linux.ews.illinois.edu
fi

