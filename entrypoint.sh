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
    args=${ARGS:-"--lint "}
    cmd="$bin $args --format rdjson $@ | reviewdog -f=rdjson -reporter=github-pr-review -level=warning"
    echo "Running command: $cmd"
    # shellcheck disable=SC2086
    eval "$cmd"
else
    $bin "$@"
fi