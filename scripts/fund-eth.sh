#!/bin/bash
docker compose exec ethside /opt/ethSide-latest-linux/sidegeth attach --exec "eth.deposit(\"$1\", web3.toSatoshi(10), web3.toSatoshi(0.0001))" http://127.0.0.1:8545
