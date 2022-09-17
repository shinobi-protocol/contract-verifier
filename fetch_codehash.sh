#! /bin/bash

curl -s https://core.spartanapi.dev/secret/chains/secret-4/contracts/$1 | jq -r .data_hash