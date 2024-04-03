/usr/local/bin/drivechaind -listen=1 -datadir=/data -rpcallowip=0.0.0.0/0 -regtest.rpcbind=0.0.0.0 -regtest.bind=0.0.0.0 &
sleep 6
/usr/local/bin/drivechain-cli -datadir=/data createsidechainproposal 6 ethereum
/usr/local/bin/drivechain-cli -datadir=/data generate 200
while true; do
  /usr/local/bin/drivechain-cli -datadir=/data generate 1
  sleep 5
done