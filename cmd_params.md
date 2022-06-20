**命令行选项**

命令使用方法 `geth [选项] 命令 [命令选项] [参数…]`

****具体命令**** 

以下命令为系统级别的操作命令，比如管理账户，导入导出功能，本身并不会启动节点，只是在使用相应的功能。
只有console命令和attach命令会进入js交互窗口。

```
account    管理账户（比如添加list参数可现实本节点地址列表）
attach     启动交互式JavaScript环境（连接到节点），此模式在生产环境以后台进程启动是常用
bug        上报bug Issues（会打开github提交问题的页面）
console    启动交互式JavaScript环境（启动时添加此参数会直接进入console交互页面，但不建议这样使用）
copydb     从指定的chaindata目录创建本地链
dump       Dump（分析）一个特定的块存储（可执行./geth dump -help查看具体命令）
dumpconfig 显示配置值(可查看节点的默认配置信息)
export     导出区块链到文件（可通过./geth export -help查看具体使用方法）
import     导入一个区块链文件
init       启动并初始化一个新的创世纪块（通过获取json文件中的配置进行初始化）
js         执行指定的JavaScript文件(多个)
license    显示许可信息
makecache  生成ethash验证缓存(用于测试)
makedag    生成ethash 挖矿DAG(用于测试)
monitor    监控和可视化节点指标
removedb   删除区块链和状态数据库
version    打印版本号
wallet     管理Ethereum预售钱包
help,h     显示一个命令或帮助一个命令列表

```

****ETHEREUM选项****

以下命令在启动geth时传递，来指定相应的配置。

```
  --config value                      TOML 配置文件
  --datadir.minfreedisk value         数据库和keystore密钥的数据目录
  --keystore value                    keystore存放目录(默认在datadir内)
  --usb                               禁用监控和管理USB硬件钱包
  --pcscdpath value                   Path to the smartcard daemon (pcscd) socket file
  --networkid value                   Explicitly set network id (integer)(For testnets: use --ropsten, --rinkeby, --goerli instead) (default: 1)
  --syncmode value                    Blockchain sync mode ("snap", "full" or "light") (default: snap)
  --exitwhensynced                    Exits after block synchronisation completes
  --gcmode value                      Blockchain garbage collection mode ("full", "archive") (default: "full")
  --txlookuplimit value               Number of recent blocks to maintain transactions index for (default = about one year, 0 = entire chain) (default: 2350000)
  --ethstats value                    Reporting URL of a ethstats service (nodename:secret@host:port)
  --identity value                    Custom node name
  --lightkdf                          在KDF强度消费时降低key-derivation RAM&CPU使用
  --eth.requiredblocks value          Comma separated block number-to-hash mappings to require for peering (<number>=<hash>)
  --mainnet                           以太坊主网
  --ropsten                           Ropsten网络:预先配置的POW(proof-of-work)测试网络
  --rinkeby                           Rinkeby网络: 预先配置的POA(proof-of-authority)测试网络
  --goerli                            Görli网络: 预先配置的POA(proof-of-authority)测试网络
  --sepolia                           Sepolia网络: 预先配置的POA(proof-of-authority)测试网络
  --kiln                              Kiln网络: pre-configured proof-of-work to proof-of-stake test network
  --datadir value                     Data directory for the databases and keystore (default: "/Users/zhangliubin/Library/Ethereum")
  --datadir.ancient value             Data directory for ancient chain segments (default = inside chaindata)
  --remotedb value                    URL for remote database
```

****LIGHT CLIENT OPTIONS:****

```
--light.serve value                 Maximum percentage of time allowed for serving LES requests (multi-threaded processing allows values over 100) (default: 0)
--light.ingress value               Incoming bandwidth limit for serving light clients (kilobytes/sec, 0 = unlimited) (default: 0)
--light.egress value                Outgoing bandwidth limit for serving light clients (kilobytes/sec, 0 = unlimited) (default: 0)
--light.maxpeers value              Maximum number of light clients to serve, or light servers to attach to (default: 100)
--ulc.servers value                 List of trusted ultra-light servers
--ulc.fraction value                Minimum % of trusted ultra-light servers required to announce a new head (default: 75)
--ulc.onlyannounce                  Ultra light server sends announcements only
--light.nopruning                   Disable ancient light chain data pruning
--light.nosyncserve                 Enables serving light clients before syncing
```

****DEVELOPER CHAIN OPTIONS:****
```
--dev                               Ephemeral proof-of-authority network with a pre-funded developer account, mining enabled
--dev.period value                  Block period to use in developer mode (0 = mine only if transaction pending) (default: 0)
--dev.gaslimit value                Initial block gas limit (default: 11500000)
```

****ETHASH OPTIONS:****

```
--ethash.cachedir value             Directory to store the ethash verification caches (default = inside the datadir)
--ethash.cachesinmem value          Number of recent ethash caches to keep in memory (16MB each) (default: 2)
--ethash.cachesondisk value         Number of recent ethash caches to keep on disk (16MB each) (default: 3)
--ethash.cacheslockmmap             Lock memory maps of recent ethash caches
--ethash.dagdir value               Directory to store the ethash mining DAGs (default: "/Users/zhangliubin/Library/Ethash")
--ethash.dagsinmem value            Number of recent ethash mining DAGs to keep in memory (1+GB each) (default: 1)
--ethash.dagsondisk value           Number of recent ethash mining DAGs to keep on disk (1+GB each) (default: 2)
--ethash.dagslockmmap               Lock memory maps for recent ethash mining DAGs
```

****TRANSACTION POOL OPTIONS:****

```
--txpool.locals value               Comma separated accounts to treat as locals (no flush, priority inclusion)
--txpool.nolocals                   Disables price exemptions for locally submitted transactions
--txpool.journal value              Disk journal for local transaction to survive node restarts (default: "transactions.rlp")
--txpool.rejournal value            Time interval to regenerate the local transaction journal (default: 1h0m0s)
--txpool.pricelimit value           Minimum gas price limit to enforce for acceptance into the pool (default: 1)
--txpool.pricebump value            Price bump percentage to replace an already existing transaction (default: 10)
--txpool.accountslots value         Minimum number of executable transaction slots guaranteed per account (default: 16)
--txpool.globalslots value          Maximum number of executable transaction slots for all accounts (default: 5120)
--txpool.accountqueue value         Maximum number of non-executable transaction slots permitted per account (default: 64)
--txpool.globalqueue value          Maximum number of non-executable transaction slots for all accounts (default: 1024)
--txpool.lifetime value             Maximum amount of time non-executable transaction are queued (default: 3h0m0s)
```
****PERFORMANCE TUNING OPTIONS:性能调优的选项****

```
--cache value                       Megabytes of memory allocated to internal caching (default = 4096 mainnet full node, 128 light mode) (default: 1024)
--cache.database value              Percentage of cache memory allowance to use for database io (default: 50)
--cache.trie value                  Percentage of cache memory allowance to use for trie caching (default = 15% full mode, 30% archive mode) (default: 15)
--cache.trie.journal value          Disk journal directory for trie cache to survive node restarts (default: "triecache")
--cache.trie.rejournal value        Time interval to regenerate the trie cache journal (default: 1h0m0s)
--cache.gc value                    Percentage of cache memory allowance to use for trie pruning (default = 25% full mode, 0% archive mode) (default: 25)
--cache.snapshot value              Percentage of cache memory allowance to use for snapshot caching (default = 10% full mode, 20% archive mode) (default: 10)
--cache.noprefetch                  Disable heuristic state prefetch during block import (less CPU and disk IO, more time waiting for data)
--cache.preimages                   Enable recording the SHA3/keccak preimages of trie keys
--fdlimit value                     Raise the open file descriptor resource limit (default = system fd limit) (default: 0)
```

****ACCOUNT OPTIONS:帐户选项****

```
--unlock value                      Comma separated list of accounts to unlock
--password value                    Password file to use for non-interactive password input
--signer value                      External signer (url or path to ipc file)
--allow-insecure-unlock             Allow insecure account unlocking when account-related RPCs are exposed by http
```

****API AND CONSOLE OPTIONS:API和控制台选项****

```
--ipcdisable                        Disable the IPC-RPC server
--ipcpath value                     Filename for IPC socket/pipe within the datadir (explicit paths escape it)
--http                              Enable the HTTP-RPC server
--http.addr value                   HTTP-RPC server listening interface (default: "localhost")
--http.port value                   HTTP-RPC server listening port (default: 8545)
--http.api value                    API's offered over the HTTP-RPC interface
--http.rpcprefix value              HTTP path path prefix on which JSON-RPC is served. Use '/' to serve on all paths.
--http.corsdomain value             Comma separated list of domains from which to accept cross origin requests (browser enforced)
--http.vhosts value                 Comma separated list of virtual hostnames from which to accept requests (server enforced). Accepts '*' wildcard. (default: "localhost")
--ws                                Enable the WS-RPC server
--ws.addr value                     WS-RPC server listening interface (default: "localhost")
--ws.port value                     WS-RPC server listening port (default: 8546)
--ws.api value                      API's offered over the WS-RPC interface
--ws.rpcprefix value                HTTP path prefix on which JSON-RPC is served. Use '/' to serve on all paths.
--ws.origins value                  Origins from which to accept websockets requests
--authrpc.jwtsecret value           Path to a JWT secret to use for authenticated RPC endpoints
--authrpc.addr value                Listening address for authenticated APIs (default: "localhost")
--authrpc.port value                Listening port for authenticated APIs (default: 8551)
--authrpc.vhosts value              Comma separated list of virtual hostnames from which to accept requests (server enforced). Accepts '*' wildcard. (default: "localhost")
--graphql                           Enable GraphQL on the HTTP-RPC server. Note that GraphQL can only be started if an HTTP server is started as well.
--graphql.corsdomain value          Comma separated list of domains from which to accept cross origin requests (browser enforced)
--graphql.vhosts value              Comma separated list of virtual hostnames from which to accept requests (server enforced). Accepts '*' wildcard. (default: "localhost")
--rpc.gascap value                  Sets a cap on gas that can be used in eth_call/estimateGas (0=infinite) (default: 50000000)
--rpc.evmtimeout value              Sets a timeout used for eth_call (0=infinite) (default: 5s)
--rpc.txfeecap value                Sets a cap on transaction fee (in ether) that can be sent via the RPC APIs (0 = no cap) (default: 1)
--rpc.allow-unprotected-txs         Allow for unprotected (non EIP155 signed) transactions to be submitted via RPC
--jspath loadScript                 JavaScript root path for loadScript (default: ".")
--exec value                        Execute JavaScript statement
--preload value                     Comma separated list of JavaScript files to preload into the console
```

****NETWORKING OPTIONS:****

```
--bootnodes value                   Comma separated enode URLs for P2P discovery bootstrap
--discovery.dns value               Sets DNS discovery entry points (use "" to disable DNS)
--port value                        Network listening port (default: 30303)
--maxpeers value                    Maximum number of network peers (network disabled if set to 0) (default: 50)
--maxpendpeers value                Maximum number of pending connection attempts (defaults used if set to 0) (default: 0)
--nat value                         NAT port mapping mechanism (any|none|upnp|pmp|extip:<IP>) (default: "any")
--nodiscover                        Disables the peer discovery mechanism (manual peer addition)
--v5disc                            Enables the experimental RLPx V5 (Topic Discovery) mechanism
--netrestrict value                 Restricts network communication to the given IP networks (CIDR masks)
--nodekey value                     P2P node key file
--nodekeyhex value                  P2P node key as hex (for testing)
```

****MINER OPTIONS:****

```
--mine                              Enable mining
--miner.threads value               Number of CPU threads to use for mining (default: 0)
--miner.notify value                Comma separated HTTP URL list to notify of new work packages
--miner.notify.full                 Notify with pending block headers instead of work packages
--miner.gasprice value              Minimum gas price for mining a transaction (default: 1000000000)
--miner.gaslimit value              Target gas ceiling for mined blocks (default: 30000000)
--miner.etherbase value             Public address for block mining rewards (default = first account) (default: "0")
--miner.extradata value             Block extra data set by the miner (default = client version)
--miner.recommit value              Time interval to recreate the block being mined (default: 3s)
--miner.noverify                    Disable remote sealing verification
```

****GAS PRICE ORACLE OPTIONS:****

```
--gpo.blocks value                  Number of recent blocks to check for gas prices (default: 20)
--gpo.percentile value              Suggested gas price is the given percentile of a set of recent transaction gas prices (default: 60)
--gpo.maxprice value                Maximum transaction priority fee (or gasprice before London fork) to be recommended by gpo (default: 500000000000)
--gpo.ignoreprice value             Gas price below which gpo will ignore transactions (default: 2)
```

****VIRTUAL MACHINE OPTIONS:****

```
--vmdebug                           Record information useful for VM and contract debugging
```

****LOGGING AND DEBUGGING OPTIONS:****

```
--fakepow                           Disables proof-of-work verification
--nocompaction                      Disables db compaction after import
--verbosity value                   Logging verbosity: 0=silent, 1=error, 2=warn, 3=info, 4=debug, 5=detail (default: 3)
--vmodule value                     Per-module verbosity: comma-separated list of <pattern>=<level> (e.g. eth/*=5,p2p=4)
--log.json                          Format logs with JSON
--log.backtrace value               Request a stack trace at a specific logging statement (e.g. "block.go:271")
--log.debug                         Prepends log messages with call-site location (file and line number)
--pprof                             Enable the pprof HTTP server
--pprof.addr value                  pprof HTTP server listening interface (default: "127.0.0.1")
--pprof.port value                  pprof HTTP server listening port (default: 6060)
--pprof.memprofilerate value        Turn on memory profiling with the given rate (default: 524288)
--pprof.blockprofilerate value      Turn on block profiling with the given rate (default: 0)
--pprof.cpuprofile value            Write CPU profile to the given file
--trace value                       Write execution trace to the given file
```

****METRICS AND STATS OPTIONS:****

```
--metrics                              Enable metrics collection and reporting
--metrics.expensive                    Enable expensive metrics collection and reporting
--metrics.addr value                   Enable stand-alone metrics HTTP server listening interface (default: "127.0.0.1")
--metrics.port value                   Metrics HTTP server listening port (default: 6060)
--metrics.influxdb                     Enable metrics export/push to an external InfluxDB database
--metrics.influxdb.endpoint value      InfluxDB API endpoint to report metrics to (default: "http://localhost:8086")
--metrics.influxdb.database value      InfluxDB database name to push reported metrics to (default: "geth")
--metrics.influxdb.username value      Username to authorize access to the database (default: "test")
--metrics.influxdb.password value      Password to authorize access to the database (default: "test")
--metrics.influxdb.tags value          Comma-separated InfluxDB tags (key/values) attached to all measurements (default: "host=localhost")
--metrics.influxdbv2                   Enable metrics export/push to an external InfluxDB v2 database
--metrics.influxdb.token value         Token to authorize access to the database (v2 only) (default: "test")
--metrics.influxdb.bucket value        InfluxDB bucket name to push reported metrics to (v2 only) (default: "geth")
--metrics.influxdb.organization value  InfluxDB organization name (v2 only) (default: "geth")
```

****ALIASED (deprecated) OPTIONS:****

```
--nousb                             Disables monitoring for and managing USB hardware wallets (deprecated)
--whitelist value                   Comma separated block number-to-hash mappings to enforce (<number>=<hash>) (deprecated in favor of --eth.requiredblocks)
```

****MISC OPTIONS:****

```
--snapshot                                Enables snapshot-database mode (default = enable)
--bloomfilter.size value                  Megabytes of memory allocated to bloom-filter for pruning (default: 2048)
--ignore-legacy-receipts                  Geth will start up even if there are legacy receipts in freezer
--help, -h                                show help
--override.grayglacier value              Manually specify Gray Glacier fork-block, overriding the bundled setting (default: 0)
--override.terminaltotaldifficulty value  Manually specify TerminalTotalDifficulty, overriding the bundled setting (default: <nil>)
```