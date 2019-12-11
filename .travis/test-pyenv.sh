#!/bin/bash
set -ev

pyenv versions

python --version
python3 --version

pyenv global 3.7.1
pyenv versions

python --version
python3 --version

pyenv virtualenv -p python3.7 3.7.1 travis_venv
pyenv virtualenvs
pipenv install
pipenv --where
pipenv --venv
pipenv --py
python3.7 --version
