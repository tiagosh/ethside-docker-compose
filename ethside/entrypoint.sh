sleep 10
/opt/ethSide-latest-linux/sidegeth --http --http.api eth,web3,personal,net \
    --http.corsdomain "*" \
    --datadir=/data --maxpeers 0 --dev \
    --main.host=mainchain --main.user=user --main.password=password --main.port=18443 \
    --http.addr 0.0.0.0 --http.vhosts="*" --verbosity 5