#!/bin/bash
set -ev

cd ./src
pipenv lock --requirements > req.txt
cd ..

key_var=AWS_ACCESS_KEY_ID_${DEPLOYMENT_STAGE^^}
sed -i -e "s|AWS_ACCESS_KEY_ID|${!key_var}|g" $HOME/.aws/credentials

secret_var=AWS_SECRET_ACCESS_KEY_${DEPLOYMENT_STAGE^^}
sed -i -e "s|AWS_SECRET_ACCESS_KEY|${!secret_var}|g" $HOME/.aws/credentials

sls deploy -s $DEPLOYMENT_STAGE --force --aws-profile $DEPLOYMENT_STAGE --app-version $TRAVIS_TAG
