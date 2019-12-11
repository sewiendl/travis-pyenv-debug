#!/bin/bash
set -ev

pyenv versions

python --version
python3 --version

pyenv global 3.7.1
pyenv versions

python --version
python3 --version
