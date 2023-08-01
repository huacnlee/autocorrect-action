#!/bin/sh
set -e

# If USE_NPM=true, use npm version of autocorrect
if [ "$USE_NPM" = "true" ]; then
    echo "Execute autocorrect-node ..."
    yarn
    yarn autocorrect $*
else
    /usr/local/bin/autocorrect $*
fi

