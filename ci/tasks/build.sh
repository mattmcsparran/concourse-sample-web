#!/bin/bash

apt-get -qq update > /dev/null

pushd source

yarn --no-progress --no-lockfile --link-duplicates --non-interactive --network-timeout 300000

./node_modules/@angular/cli/bin/ng build --progress=false --verbose  --outputHashing=all

popd

exit 0