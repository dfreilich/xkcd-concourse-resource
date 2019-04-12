#!/usr/bin/env bash
read json

source="$(echo $json | jq -r ".source")"
version="$(echo $json | jq -r ".version")"

latest_version="$(curl https://www.xkcd.com/info.0.json | jq ".num")"
echo "[{\"id\": \"$latest_version\"}]"
exit 0
