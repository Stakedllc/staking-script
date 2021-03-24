#!/bin/bash

set -eo pipefail

GAS_PRICE="$(curl 'https://api.etherscan.io/api?module=gastracker&action=gasoracle&apikey=ZQZ7M9GPXG5MMMK6W4UJ5XVNCADPI5SXN9' | jq -e -r .result.ProposeGasPrice)"

GAS_PRICE_WEI=$(( $GAS_PRICE * 10**9 ))

node app.js \
  --provider-url https://mainnet.infura.io/v3/11ca986655fb407ca5d56b996b693632 \
  --function-name commit \
  --gas-price $GAS_PRICE_WEI \
  "$@"
