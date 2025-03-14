# Universal resolver driver from PRISM did

This is the driver used by the [Universal resolver](https://github.com/decentralized-identity/universal-resolver) to resolver the `did:prism`.

## How it works?

This driver work line a proxy. It uses the API from blocktrust, to get the did:prism resolved.

## Build and test the image locally

To build run the following command:
- `docker build . --tag ghcr.io/fabiopinheiro/uni-resolver-driver-did-prism:test`

To run the image builded in the previous step:
`docker run -it --rm -p 9090:9090 ghcr.io/fabiopinheiro/uni-resolver-driver-did-prism:test`

Now you can test the image by trying to resolve a DID:
`curl 'http://localhost:9090/1.0/identifiers/did:prism:00592a141a4c2bcb7a6aa691750511e2e9b048231820125e15ab70b12a210aae' | jq`