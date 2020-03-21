#!/usr/bin/env bash

diff=$1
owner=${GITHUB_REPOSITORY%/*}
repo=${GITHUB_REPOSITORY#*/}

if [ "$diff" == "true" ]; then
    gram -t "$ACTIONS_RUNTIME_TOKEN" \
        diff-settings \
        -o "$owner" \
        -r "$repo" \
        -s .github/gram/settings.toml
fi
