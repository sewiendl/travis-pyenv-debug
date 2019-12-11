#!/bin/bash
set -ev

pyenv global 3.7.1

# This must work!
python3.7 --version
