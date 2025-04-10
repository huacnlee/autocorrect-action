#!/bin/sh
set -e

bin=/usr/local/bin/autocorrect

# If USE_NPM=true, use npm version of autocorrect
if [ "$USE_NPM" = "true" ]; then
    echo "Use autocorrect-node"
    bin=/root/.yarn/bin/autocorrect
fi

if [ "$REVIEWDOG" = "true" ]; then
    echo "Use reviewdog"
    args=${ARGS:-". --lint --no-diff-bg-color"}
    echo "$bin $args --format rdjson | reviewdog -f=rdjson -reporter=github-pr-review -level=warning"
    
    $bin $args --format rdjson | reviewdog -f=rdjson -reporter=github-pr-review -level=warning
else
    $bin "$@"
fi