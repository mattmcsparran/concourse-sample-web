#!/bin/bash

apt-get -qq update > /dev/null

pushd source

npm install --no-audit

./node_modules/@angular/cli/bin/ng build --progress=false --verbose  --outputHashing=all

popd

exit 0