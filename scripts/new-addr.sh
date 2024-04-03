#!/bin/bash
docker compose exec ethside /opt/ethereum-sidechain/build/bin/sidegeth attach --exec "personal.newAccount()" http://127.0.0.1:8545
