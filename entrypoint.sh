#!/usr/bin/env bash

token=$1
diff=$2
owner=${GITHUB_REPOSITORY%/*}
repo=${GITHUB_REPOSITORY#*/}

if [ "$diff" == "true" ]; then
    gram -t "$token" \
        diff-settings \
        -o "$owner" \
        -r "$repo" \
        -s .github/gram/settings.toml
fi
