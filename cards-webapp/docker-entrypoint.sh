#!/bin/bash
#export MONGO_URL=mongodb://meteor:meteor@mongodb/meteor
export NODE_ENV=production
export PORT=3000
export METEOR_SETTINGS="`cat settings.json`"

cd /build/bundle
echo "Starting app"
node main.js


