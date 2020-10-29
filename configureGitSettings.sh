#!/bin/bash

git config --global credential.helper "cache --timeout=604800"
git config --global help.autocorrect 1

# Commented out for now because these should only be ran on my machine
# git config --global user.name stroestefan
# git config --global user.email stroestefan97@gmail.com
# git config --global github.user stroestefan
