## Build image:
```
docker build -t tokamak .
```

## Stake TON
```
# 1e18 = 1 TON
AMOUNT=1000000000000000000
docker run --rm -it tokamak \
  -c "node app.js --provider-url https://mainnet.infura.io/v3/11ca986655fb407ca5d56b996b693632 -f approveAndCall -p $AMOUNT -k $(cat /path/to/private/key)"
```
