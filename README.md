# Contract Verifier

docker image to verify secret-btc contracts build result against its source.

## Build docker image

```
docker build . -t contract-verifier:1
```


## Run docker container

```
docker run -it contract-verifier:1
```

## In docker container

### clone source code
```
git clone https://github.com/shinobi-protocol/secret-btc.git
```

for source code of PublicBeta2 checkout to the commit `4a4083e
`

### compile source code and hash the wasm binary (eg. gateway)
```
cd secret-btc/contracts/gateway
make compile-optimized
sha256sum contract.wasm | head -c 64
```

### fetch deployed contracts code hash 

```
sh ./fetch_codehash.sh {contract address}
```

for PublicBeta2, addresses and code hashes of deployed contracts are as follows 

```
{
    "MULTISIG": {
        "address": "secret1lwy567p3zhah0pwpc78n2lcqfwcywlung6agjc",
        "hash": "cf4e0755d38996c3e73530a2211ae18332d5a590f33dc062c3a88fc4271b2474"
    },
    "LOG": {
        "address": "secret1r0hgkflykycxra2l70xtp37aljqm8uc7ucjqt0",
        "hash": "5af0efe4eb7a239c8d3db05ceedd3c25ab3263e4a364b100f68b05aefa729ee9"
    },
    "BITCOIN_SPV": {
        "address": "secret14s5fxskxt860grzptgsn76u8jx4t6m96vu0h03",
        "hash": "2437265d19ece755cb31525af4fd68e57021e802bade5b17e746196682ad5716"
    },
    "SFPS": {
        "address": "secret1w79s2ff8vk3nkjd6z6ghw0py3asrd6keluw6as",
        "hash": "1f46926c9c80adef6f95baca4e39dd56bb3d3d784489afe00065e166b1ebc7cf"
    },
    "SBTC": {
        "address": "secret1eyfretdsy28knxflearstxszrmwkhnjvqn9tt5",
        "hash": "9d76e1d3b84937da040cf5c3adf68fcec7fc8cc5783662adc6344ab902755818"
    },
    "SNB": {
        "address": "secret1c4zq752dexr0dplnsv55ct0ul9k6jtzne8jrff",
        "hash": "9d76e1d3b84937da040cf5c3adf68fcec7fc8cc5783662adc6344ab902755818"
    },
    "GATEWAY": {
        "address": "secret1fv7trst8ev259xce2vnm7hpk796hymp3lctc57",
        "hash": "39c2a47fa4807ae8767f5c68df4adcc129ed163c4559140b4f433fdb9555c31b"
    },
    "TREASURY": {
        "address": "secret19vmvjzk9fzc2htc3lrxjrqaktvhn8jv92nylvm",
        "hash": "a92b4dfb53cb9236d8e368b08c67b1fe37a2809507a35a0790370a7f5d4375a4"
    },
    "SHURIKEN": {
        "address": "secret1ppvnxlac69qx05l956r2ng6z2ews3whrq5a5wc",
        "hash": "bbab2f56f8c2dde43e0003b877a760cd18e892833b036b8a2fa38f9854675ccd"
    },
    "FINANCE_ADMIN_V1": {
        "address": "secret1mtkqdptnu4l7j94ce6wh8z6uw0pfhyz4frnds0",
        "hash": "5f11daa8e857d438cc2314816c84578205950d9e3f13fc9faa793189116de4b7"
    }
}
```