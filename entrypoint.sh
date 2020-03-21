#!/usr/bin/env bash
args=()
for arg in "${@}"; do   
    args+=("$arg")
done
gram "${args[@]}"
