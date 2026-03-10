#!/bin/bash

POOL_DIR="/pool/coins"

mkdir -p $POOL_DIR

cat <<EOF > $POOL_DIR/fractal.json
{
  "symbol": "FB",
  "coin_type": "fractalbitcoin",
  "node": {
    "host": "gofractal-node",
    "port": 32123,
    "username": "fractal",
    "password": "-k-moe0BzJXTjvIHgmZMdTIe",
    "zmq_enabled": true,
    "zmq_hashblock": "tcp://gofractal-node:32125"
  },
  "stratum": {
    "port": 3335,
    "difficulty": 8192
  }
}
EOF

echo "Fractal registered with GoStrataCore"
