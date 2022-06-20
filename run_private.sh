#启动私有网络

#geth init genesis.json --datadir ./data


geth --datadir ./data --networkid 18  --http.port 8545 console 2 > 1.log