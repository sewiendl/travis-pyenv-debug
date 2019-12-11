#!/bin/bash
set -ev

pyenv versions

python --version

pyenv global 3.7.1

python --version
