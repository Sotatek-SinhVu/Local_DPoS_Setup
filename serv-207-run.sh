#!/bin/bash
_interupt() { 
    echo "Shutdown $child_proc"
    kill -TERM $child_proc
    exit
}

trap _interupt INT TERM

touch .pwd
export $(cat .env | xargs)
Bin_NAME=XDC

WORK_DIR=$PWD
PROJECT_DIR="/home/sotatek/xinfin/Local_XDPoS_TestNet_Apothem"
cd $PROJECT_DIR && make all
cd $WORK_DIR

if [ ! -d ./nodes/1/$Bin_NAME/chaindata ]
then
  wallet1=$(${PROJECT_DIR}/build/bin/$Bin_NAME account import --password .pwd --datadir ./nodes/1 <(echo ${PRIVATE_KEY_1}) | awk -v FS="({|})" '{print $2}')
  wallet2=$(${PROJECT_DIR}/build/bin/$Bin_NAME account import --password .pwd --datadir ./nodes/2 <(echo ${PRIVATE_KEY_2}) | awk -v FS="({|})" '{print $2}')
  wallet3=$(${PROJECT_DIR}/build/bin/$Bin_NAME account import --password .pwd --datadir ./nodes/3 <(echo ${PRIVATE_KEY_3}) | awk -v FS="({|})" '{print $2}')
  wallet4=$(${PROJECT_DIR}/build/bin/$Bin_NAME account import --password .pwd --datadir ./nodes/4 <(echo ${PRIVATE_KEY_4}) | awk -v FS="({|})" '{print $2}')
  wallet5=$(${PROJECT_DIR}/build/bin/$Bin_NAME account import --password .pwd --datadir ./nodes/5 <(echo ${PRIVATE_KEY_5}) | awk -v FS="({|})" '{print $2}')
  wallet6=$(${PROJECT_DIR}/build/bin/$Bin_NAME account import --password .pwd --datadir ./nodes/6 <(echo ${PRIVATE_KEY_6}) | awk -v FS="({|})" '{print $2}')

  wallet7=$(${PROJECT_DIR}/build/bin/$Bin_NAME account import --password .pwd --datadir ./nodes/7 <(echo ${PRIVATE_KEY_7}) | awk -v FS="({|})" '{print $2}')
  wallet8=$(${PROJECT_DIR}/build/bin/$Bin_NAME account import --password .pwd --datadir ./nodes/8 <(echo ${PRIVATE_KEY_8}) | awk -v FS="({|})" '{print $2}')
  wallet9=$(${PROJECT_DIR}/build/bin/$Bin_NAME account import --password .pwd --datadir ./nodes/9 <(echo ${PRIVATE_KEY_9}) | awk -v FS="({|})" '{print $2}')
  wallet10=$(${PROJECT_DIR}/build/bin/$Bin_NAME account import --password .pwd --datadir ./nodes/10 <(echo ${PRIVATE_KEY_10}) | awk -v FS="({|})" '{print $2}')
  wallet11=$(${PROJECT_DIR}/build/bin/$Bin_NAME account import --password .pwd --datadir ./nodes/11 <(echo ${PRIVATE_KEY_11}) | awk -v FS="({|})" '{print $2}')
  wallet12=$(${PROJECT_DIR}/build/bin/$Bin_NAME account import --password .pwd --datadir ./nodes/12 <(echo ${PRIVATE_KEY_12}) | awk -v FS="({|})" '{print $2}')

  # wallet13=$(${PROJECT_DIR}/build/bin/$Bin_NAME account import --password .pwd --datadir ./nodes/13 <(echo ${PRIVATE_KEY_13}) | awk -v FS="({|})" '{print $2}')
  # wallet14=$(${PROJECT_DIR}/build/bin/$Bin_NAME account import --password .pwd --datadir ./nodes/14 <(echo ${PRIVATE_KEY_14}) | awk -v FS="({|})" '{print $2}')
  # wallet15=$(${PROJECT_DIR}/build/bin/$Bin_NAME account import --password .pwd --datadir ./nodes/15 <(echo ${PRIVATE_KEY_15}) | awk -v FS="({|})" '{print $2}')
  # wallet16=$(${PROJECT_DIR}/build/bin/$Bin_NAME account import --password .pwd --datadir ./nodes/16 <(echo ${PRIVATE_KEY_16}) | awk -v FS="({|})" '{print $2}')
  # wallet17=$(${PROJECT_DIR}/build/bin/$Bin_NAME account import --password .pwd --datadir ./nodes/17 <(echo ${PRIVATE_KEY_17}) | awk -v FS="({|})" '{print $2}')
  # wallet18=$(${PROJECT_DIR}/build/bin/$Bin_NAME account import --password .pwd --datadir ./nodes/18 <(echo ${PRIVATE_KEY_18}) | awk -v FS="({|})" '{print $2}')

  # wallet19=$(${PROJECT_DIR}/build/bin/$Bin_NAME account import --password .pwd --datadir ./nodes/19 <(echo ${PRIVATE_KEY_19}) | awk -v FS="({|})" '{print $2}')
  # wallet20=$(${PROJECT_DIR}/build/bin/$Bin_NAME account import --password .pwd --datadir ./nodes/20 <(echo ${PRIVATE_KEY_20}) | awk -v FS="({|})" '{print $2}')
  # wallet21=$(${PROJECT_DIR}/build/bin/$Bin_NAME account import --password .pwd --datadir ./nodes/21 <(echo ${PRIVATE_KEY_21}) | awk -v FS="({|})" '{print $2}')
  # wallet22=$(${PROJECT_DIR}/build/bin/$Bin_NAME account import --password .pwd --datadir ./nodes/22 <(echo ${PRIVATE_KEY_22}) | awk -v FS="({|})" '{print $2}')
  # wallet23=$(${PROJECT_DIR}/build/bin/$Bin_NAME account import --password .pwd --datadir ./nodes/23 <(echo ${PRIVATE_KEY_23}) | awk -v FS="({|})" '{print $2}')
  # wallet24=$(${PROJECT_DIR}/build/bin/$Bin_NAME account import --password .pwd --datadir ./nodes/24 <(echo ${PRIVATE_KEY_24}) | awk -v FS="({|})" '{print $2}')

  ${PROJECT_DIR}/build/bin/$Bin_NAME --datadir ./nodes/1 init ./genesis/genesis.json
  ${PROJECT_DIR}/build/bin/$Bin_NAME --datadir ./nodes/2 init ./genesis/genesis.json
  ${PROJECT_DIR}/build/bin/$Bin_NAME --datadir ./nodes/3 init ./genesis/genesis.json
  ${PROJECT_DIR}/build/bin/$Bin_NAME --datadir ./nodes/4 init ./genesis/genesis.json
  ${PROJECT_DIR}/build/bin/$Bin_NAME --datadir ./nodes/5 init ./genesis/genesis.json
  ${PROJECT_DIR}/build/bin/$Bin_NAME --datadir ./nodes/6 init ./genesis/genesis.json

  ${PROJECT_DIR}/build/bin/$Bin_NAME --datadir ./nodes/7 init ./genesis/genesis.json
  ${PROJECT_DIR}/build/bin/$Bin_NAME --datadir ./nodes/8 init ./genesis/genesis.json
  ${PROJECT_DIR}/build/bin/$Bin_NAME --datadir ./nodes/9 init ./genesis/genesis.json
  ${PROJECT_DIR}/build/bin/$Bin_NAME --datadir ./nodes/10 init ./genesis/genesis.json
  ${PROJECT_DIR}/build/bin/$Bin_NAME --datadir ./nodes/11 init ./genesis/genesis.json
  ${PROJECT_DIR}/build/bin/$Bin_NAME --datadir ./nodes/12 init ./genesis/genesis.json

  # ${PROJECT_DIR}/build/bin/$Bin_NAME --datadir ./nodes/13 init ./genesis/genesis.json
  # ${PROJECT_DIR}/build/bin/$Bin_NAME --datadir ./nodes/14 init ./genesis/genesis.json
  # ${PROJECT_DIR}/build/bin/$Bin_NAME --datadir ./nodes/15 init ./genesis/genesis.json
  # ${PROJECT_DIR}/build/bin/$Bin_NAME --datadir ./nodes/16 init ./genesis/genesis.json
  # ${PROJECT_DIR}/build/bin/$Bin_NAME --datadir ./nodes/17 init ./genesis/genesis.json
  # ${PROJECT_DIR}/build/bin/$Bin_NAME --datadir ./nodes/18 init ./genesis/genesis.json

  # ${PROJECT_DIR}/build/bin/$Bin_NAME --datadir ./nodes/19 init ./genesis/genesis.json
  # ${PROJECT_DIR}/build/bin/$Bin_NAME --datadir ./nodes/20 init ./genesis/genesis.json
  # ${PROJECT_DIR}/build/bin/$Bin_NAME --datadir ./nodes/21 init ./genesis/genesis.json
  # ${PROJECT_DIR}/build/bin/$Bin_NAME --datadir ./nodes/22 init ./genesis/genesis.json
  # ${PROJECT_DIR}/build/bin/$Bin_NAME --datadir ./nodes/23 init ./genesis/genesis.json
  # ${PROJECT_DIR}/build/bin/$Bin_NAME --datadir ./nodes/24 init ./genesis/genesis.json
else
  wallet1=$(${PROJECT_DIR}/build/bin/$Bin_NAME account list --datadir ./nodes/1 | head -n 1 | awk -v FS="({|})" '{print $2}')
  wallet2=$(${PROJECT_DIR}/build/bin/$Bin_NAME account list --datadir ./nodes/2 | head -n 1 | awk -v FS="({|})" '{print $2}')
  wallet3=$(${PROJECT_DIR}/build/bin/$Bin_NAME account list --datadir ./nodes/3 | head -n 1 | awk -v FS="({|})" '{print $2}')
  wallet4=$(${PROJECT_DIR}/build/bin/$Bin_NAME account list --datadir ./nodes/4 | head -n 1 | awk -v FS="({|})" '{print $2}')
  wallet5=$(${PROJECT_DIR}/build/bin/$Bin_NAME account list --datadir ./nodes/5 | head -n 1 | awk -v FS="({|})" '{print $2}')
  wallet6=$(${PROJECT_DIR}/build/bin/$Bin_NAME account list --datadir ./nodes/6 | head -n 1 | awk -v FS="({|})" '{print $2}')

  wallet7=$(${PROJECT_DIR}/build/bin/$Bin_NAME account list --datadir ./nodes/7 | head -n 1 | awk -v FS="({|})" '{print $2}')
  wallet8=$(${PROJECT_DIR}/build/bin/$Bin_NAME account list --datadir ./nodes/8 | head -n 1 | awk -v FS="({|})" '{print $2}')
  wallet9=$(${PROJECT_DIR}/build/bin/$Bin_NAME account list --datadir ./nodes/9 | head -n 1 | awk -v FS="({|})" '{print $2}')
  wallet10=$(${PROJECT_DIR}/build/bin/$Bin_NAME account list --datadir ./nodes/10 | head -n 1 | awk -v FS="({|})" '{print $2}')
  wallet11=$(${PROJECT_DIR}/build/bin/$Bin_NAME account list --datadir ./nodes/11 | head -n 1 | awk -v FS="({|})" '{print $2}')
  wallet12=$(${PROJECT_DIR}/build/bin/$Bin_NAME account list --datadir ./nodes/12 | head -n 1 | awk -v FS="({|})" '{print $2}')

  # wallet13=$(${PROJECT_DIR}/build/bin/$Bin_NAME account list --datadir ./nodes/13 | head -n 1 | awk -v FS="({|})" '{print $2}')
  # wallet14=$(${PROJECT_DIR}/build/bin/$Bin_NAME account list --datadir ./nodes/14 | head -n 1 | awk -v FS="({|})" '{print $2}')
  # wallet15=$(${PROJECT_DIR}/build/bin/$Bin_NAME account list --datadir ./nodes/15 | head -n 1 | awk -v FS="({|})" '{print $2}')
  # wallet16=$(${PROJECT_DIR}/build/bin/$Bin_NAME account list --datadir ./nodes/16 | head -n 1 | awk -v FS="({|})" '{print $2}')
  # wallet17=$(${PROJECT_DIR}/build/bin/$Bin_NAME account list --datadir ./nodes/17 | head -n 1 | awk -v FS="({|})" '{print $2}')
  # wallet18=$(${PROJECT_DIR}/build/bin/$Bin_NAME account list --datadir ./nodes/18 | head -n 1 | awk -v FS="({|})" '{print $2}')

  # wallet19=$(${PROJECT_DIR}/build/bin/$Bin_NAME account list --datadir ./nodes/19 | head -n 1 | awk -v FS="({|})" '{print $2}')
  # wallet20=$(${PROJECT_DIR}/build/bin/$Bin_NAME account list --datadir ./nodes/20 | head -n 1 | awk -v FS="({|})" '{print $2}')
  # wallet21=$(${PROJECT_DIR}/build/bin/$Bin_NAME account list --datadir ./nodes/21 | head -n 1 | awk -v FS="({|})" '{print $2}')
  # wallet22=$(${PROJECT_DIR}/build/bin/$Bin_NAME account list --datadir ./nodes/22 | head -n 1 | awk -v FS="({|})" '{print $2}')
  # wallet23=$(${PROJECT_DIR}/build/bin/$Bin_NAME account list --datadir ./nodes/23 | head -n 1 | awk -v FS="({|})" '{print $2}')
  # wallet24=$(${PROJECT_DIR}/build/bin/$Bin_NAME account list --datadir ./nodes/24 | head -n 1 | awk -v FS="({|})" '{print $2}')
fi

VERBOSITY=3
GASPRICE="1"

echo Starting the bootnode ...
${PROJECT_DIR}/build/bin/bootnode -nodekey ./bootnode.key --addr 0.0.0.0:30301 &
child_proc=$!

echo Starting the nodes ...
${PROJECT_DIR}/build/bin/$Bin_NAME --bootnodes "enode://1c20e6b46ce608c1fe739e78611225b94e663535b74a1545b1667eac8ff75ed43216306d123306c10e043f228e42cc53cb2728655019292380313393eaaf6e23@127.0.0.1:30301" --syncmode "full" --datadir ./nodes/1 --networkid 94 --port 30401 --rpc --rpccorsdomain "*" --ws --wsaddr="0.0.0.0" --wsorigins "*" --wsport 8741 --rpcaddr 0.0.0.0 --rpcport 8641 --rpcvhosts "*" --unlock "${wallet1}" --password ./.pwd --mine --gasprice "${GASPRICE}" --targetgaslimit "420000000" --verbosity ${VERBOSITY} --rpcapi admin,db,eth,debug,miner,net,shh,txpool,personal,web3,XDPoS --ethstats "207-MasterNode-01:xinfin_network_stats@localhost:3005" &
child_proc="$child_proc $!"
${PROJECT_DIR}/build/bin/$Bin_NAME --bootnodes "enode://1c20e6b46ce608c1fe739e78611225b94e663535b74a1545b1667eac8ff75ed43216306d123306c10e043f228e42cc53cb2728655019292380313393eaaf6e23@127.0.0.1:30301" --syncmode "full" --datadir ./nodes/2 --networkid 94 --port 30402 --rpc --rpccorsdomain "*" --ws --wsaddr="0.0.0.0" --wsorigins "*" --wsport 8742 --rpcaddr 0.0.0.0 --rpcport 8642 --rpcvhosts "*" --unlock "${wallet2}" --password ./.pwd --mine --gasprice "${GASPRICE}" --targetgaslimit "420000000" --verbosity ${VERBOSITY} --rpcapi admin,db,eth,debug,miner,net,shh,txpool,personal,web3,XDPoS --ethstats "207-MasterNode-02:xinfin_network_stats@localhost:3005" &
child_proc="$child_proc $!"
${PROJECT_DIR}/build/bin/$Bin_NAME --bootnodes "enode://1c20e6b46ce608c1fe739e78611225b94e663535b74a1545b1667eac8ff75ed43216306d123306c10e043f228e42cc53cb2728655019292380313393eaaf6e23@127.0.0.1:30301" --syncmode "full" --datadir ./nodes/3 --networkid 94 --port 30403 --rpc --rpccorsdomain "*" --ws --wsaddr="0.0.0.0" --wsorigins "*" --wsport 8743 --rpcaddr 0.0.0.0 --rpcport 8643 --rpcvhosts "*" --unlock "${wallet3}" --password ./.pwd --mine --gasprice "${GASPRICE}" --targetgaslimit "420000000" --verbosity ${VERBOSITY} --rpcapi admin,db,eth,debug,miner,net,shh,txpool,personal,web3,XDPoS --ethstats "207-MasterNode-03:xinfin_network_stats@localhost:3005" &
child_proc="$child_proc $!"
${PROJECT_DIR}/build/bin/$Bin_NAME --bootnodes "enode://1c20e6b46ce608c1fe739e78611225b94e663535b74a1545b1667eac8ff75ed43216306d123306c10e043f228e42cc53cb2728655019292380313393eaaf6e23@127.0.0.1:30301" --syncmode "full" --datadir ./nodes/4 --networkid 94 --port 30404 --rpc --rpccorsdomain "*" --ws --wsaddr="0.0.0.0" --wsorigins "*" --wsport 8744 --rpcaddr 0.0.0.0 --rpcport 8644 --rpcvhosts "*" --unlock "${wallet4}" --password ./.pwd --mine --gasprice "${GASPRICE}" --targetgaslimit "420000000" --verbosity ${VERBOSITY} --rpcapi admin,db,eth,debug,miner,net,shh,txpool,personal,web3,XDPoS --ethstats "207-MasterNode-04:xinfin_network_stats@localhost:3005" &
child_proc="$child_proc $!"
${PROJECT_DIR}/build/bin/$Bin_NAME --bootnodes "enode://1c20e6b46ce608c1fe739e78611225b94e663535b74a1545b1667eac8ff75ed43216306d123306c10e043f228e42cc53cb2728655019292380313393eaaf6e23@127.0.0.1:30301" --syncmode "full" --datadir ./nodes/5 --networkid 94 --port 30405 --rpc --rpccorsdomain "*" --ws --wsaddr="0.0.0.0" --wsorigins "*" --wsport 8745 --rpcaddr 0.0.0.0 --rpcport 8645 --rpcvhosts "*" --unlock "${wallet5}" --password ./.pwd --mine --gasprice "${GASPRICE}" --targetgaslimit "420000000" --verbosity ${VERBOSITY} --rpcapi admin,db,eth,debug,miner,net,shh,txpool,personal,web3,XDPoS --ethstats "207-MasterNode-05:xinfin_network_stats@localhost:3005" &
child_proc="$child_proc $!"
${PROJECT_DIR}/build/bin/$Bin_NAME --bootnodes "enode://1c20e6b46ce608c1fe739e78611225b94e663535b74a1545b1667eac8ff75ed43216306d123306c10e043f228e42cc53cb2728655019292380313393eaaf6e23@127.0.0.1:30301" --syncmode "full" --datadir ./nodes/6 --networkid 94 --port 30406 --rpc --rpccorsdomain "*" --ws --wsaddr="0.0.0.0" --wsorigins "*" --wsport 8746 --rpcaddr 0.0.0.0 --rpcport 8646 --rpcvhosts "*" --unlock "${wallet6}" --password ./.pwd --mine --gasprice "${GASPRICE}" --targetgaslimit "420000000" --verbosity ${VERBOSITY} --rpcapi admin,db,eth,debug,miner,net,shh,txpool,personal,web3,XDPoS --ethstats "207-MasterNode-06:xinfin_network_stats@localhost:3005" &
child_proc="$child_proc $!"

${PROJECT_DIR}/build/bin/$Bin_NAME --bootnodes "enode://1c20e6b46ce608c1fe739e78611225b94e663535b74a1545b1667eac8ff75ed43216306d123306c10e043f228e42cc53cb2728655019292380313393eaaf6e23@127.0.0.1:30301" --syncmode "full" --datadir ./nodes/7 --networkid 94 --port 30407 --rpc --rpccorsdomain "*" --ws --wsaddr="0.0.0.0" --wsorigins "*" --wsport 8747 --rpcaddr 0.0.0.0 --rpcport 8647 --rpcvhosts "*" --unlock "${wallet7}" --password ./.pwd --mine --gasprice "${GASPRICE}" --targetgaslimit "420000000" --verbosity ${VERBOSITY} --rpcapi admin,db,eth,debug,miner,net,shh,txpool,personal,web3,XDPoS --ethstats "207-MasterNode-07:xinfin_network_stats@localhost:3005" &
child_proc="$child_proc $!"
${PROJECT_DIR}/build/bin/$Bin_NAME --bootnodes "enode://1c20e6b46ce608c1fe739e78611225b94e663535b74a1545b1667eac8ff75ed43216306d123306c10e043f228e42cc53cb2728655019292380313393eaaf6e23@127.0.0.1:30301" --syncmode "full" --datadir ./nodes/8 --networkid 94 --port 30408 --rpc --rpccorsdomain "*" --ws --wsaddr="0.0.0.0" --wsorigins "*" --wsport 8748 --rpcaddr 0.0.0.0 --rpcport 8648 --rpcvhosts "*" --unlock "${wallet8}" --password ./.pwd --mine --gasprice "${GASPRICE}" --targetgaslimit "420000000" --verbosity ${VERBOSITY} --rpcapi admin,db,eth,debug,miner,net,shh,txpool,personal,web3,XDPoS --ethstats "207-MasterNode-08:xinfin_network_stats@localhost:3005" &
child_proc="$child_proc $!"
${PROJECT_DIR}/build/bin/$Bin_NAME --bootnodes "enode://1c20e6b46ce608c1fe739e78611225b94e663535b74a1545b1667eac8ff75ed43216306d123306c10e043f228e42cc53cb2728655019292380313393eaaf6e23@127.0.0.1:30301" --syncmode "full" --datadir ./nodes/9 --networkid 94 --port 30409 --rpc --rpccorsdomain "*" --ws --wsaddr="0.0.0.0" --wsorigins "*" --wsport 8749 --rpcaddr 0.0.0.0 --rpcport 8649 --rpcvhosts "*" --unlock "${wallet9}" --password ./.pwd --mine --gasprice "${GASPRICE}" --targetgaslimit "420000000" --verbosity ${VERBOSITY} --rpcapi admin,db,eth,debug,miner,net,shh,txpool,personal,web3,XDPoS --ethstats "207-MasterNode-09:xinfin_network_stats@localhost:3005" &
child_proc="$child_proc $!"
${PROJECT_DIR}/build/bin/$Bin_NAME --bootnodes "enode://1c20e6b46ce608c1fe739e78611225b94e663535b74a1545b1667eac8ff75ed43216306d123306c10e043f228e42cc53cb2728655019292380313393eaaf6e23@127.0.0.1:30301" --syncmode "full" --datadir ./nodes/10 --networkid 94 --port 30410 --rpc --rpccorsdomain "*" --ws --wsaddr="0.0.0.0" --wsorigins "*" --wsport 8750 --rpcaddr 0.0.0.0 --rpcport 8650 --rpcvhosts "*" --unlock "${wallet10}" --password ./.pwd --mine --gasprice "${GASPRICE}" --targetgaslimit "420000000" --verbosity ${VERBOSITY} --rpcapi admin,db,eth,debug,miner,net,shh,txpool,personal,web3,XDPoS --ethstats "207-MasterNode-10:xinfin_network_stats@localhost:3005" &
child_proc="$child_proc $!"
${PROJECT_DIR}/build/bin/$Bin_NAME --bootnodes "enode://1c20e6b46ce608c1fe739e78611225b94e663535b74a1545b1667eac8ff75ed43216306d123306c10e043f228e42cc53cb2728655019292380313393eaaf6e23@127.0.0.1:30301" --syncmode "full" --datadir ./nodes/11 --networkid 94 --port 30411 --rpc --rpccorsdomain "*" --ws --wsaddr="0.0.0.0" --wsorigins "*" --wsport 8751 --rpcaddr 0.0.0.0 --rpcport 8651 --rpcvhosts "*" --unlock "${wallet11}" --password ./.pwd --mine --gasprice "${GASPRICE}" --targetgaslimit "420000000" --verbosity ${VERBOSITY} --rpcapi admin,db,eth,debug,miner,net,shh,txpool,personal,web3,XDPoS --ethstats "207-MasterNode-11:xinfin_network_stats@localhost:3005" &
child_proc="$child_proc $!"
${PROJECT_DIR}/build/bin/$Bin_NAME --bootnodes "enode://1c20e6b46ce608c1fe739e78611225b94e663535b74a1545b1667eac8ff75ed43216306d123306c10e043f228e42cc53cb2728655019292380313393eaaf6e23@127.0.0.1:30301" --syncmode "full" --datadir ./nodes/12 --networkid 94 --port 30412 --rpc --rpccorsdomain "*" --ws --wsaddr="0.0.0.0" --wsorigins "*" --wsport 8752 --rpcaddr 0.0.0.0 --rpcport 8652 --rpcvhosts "*" --unlock "${wallet12}" --password ./.pwd --mine --gasprice "${GASPRICE}" --targetgaslimit "420000000" --verbosity ${VERBOSITY} --rpcapi admin,db,eth,debug,miner,net,shh,txpool,personal,web3,XDPoS --ethstats "207-MasterNode-12:xinfin_network_stats@localhost:3005"
# child_proc="$child_proc $!"

# ${PROJECT_DIR}/build/bin/$Bin_NAME --bootnodes "enode://1c20e6b46ce608c1fe739e78611225b94e663535b74a1545b1667eac8ff75ed43216306d123306c10e043f228e42cc53cb2728655019292380313393eaaf6e23@127.0.0.1:30301" --syncmode "full" --datadir ./nodes/13 --networkid 94 --port 30413 --rpc --rpccorsdomain "*" --ws --wsaddr="0.0.0.0" --wsorigins "*" --wsport 8753 --rpcaddr 0.0.0.0 --rpcport 8653 --rpcvhosts "*" --unlock "${wallet13}" --password ./.pwd --mine --gasprice "${GASPRICE}" --targetgaslimit "420000000" --verbosity ${VERBOSITY} --rpcapi admin,db,eth,debug,miner,net,shh,txpool,personal,web3,XDPoS --ethstats "207-MasterNode-13:xinfin_network_stats@localhost:3005" &
# child_proc="$child_proc $!"
# ${PROJECT_DIR}/build/bin/$Bin_NAME --bootnodes "enode://1c20e6b46ce608c1fe739e78611225b94e663535b74a1545b1667eac8ff75ed43216306d123306c10e043f228e42cc53cb2728655019292380313393eaaf6e23@127.0.0.1:30301" --syncmode "full" --datadir ./nodes/14 --networkid 94 --port 30414 --rpc --rpccorsdomain "*" --ws --wsaddr="0.0.0.0" --wsorigins "*" --wsport 8754 --rpcaddr 0.0.0.0 --rpcport 8654 --rpcvhosts "*" --unlock "${wallet14}" --password ./.pwd --mine --gasprice "${GASPRICE}" --targetgaslimit "420000000" --verbosity ${VERBOSITY} --rpcapi admin,db,eth,debug,miner,net,shh,txpool,personal,web3,XDPoS --ethstats "207-MasterNode-14:xinfin_network_stats@localhost:3005" &
# child_proc="$child_proc $!"
# ${PROJECT_DIR}/build/bin/$Bin_NAME --bootnodes "enode://1c20e6b46ce608c1fe739e78611225b94e663535b74a1545b1667eac8ff75ed43216306d123306c10e043f228e42cc53cb2728655019292380313393eaaf6e23@127.0.0.1:30301" --syncmode "full" --datadir ./nodes/15 --networkid 94 --port 30415 --rpc --rpccorsdomain "*" --ws --wsaddr="0.0.0.0" --wsorigins "*" --wsport 8755 --rpcaddr 0.0.0.0 --rpcport 8655 --rpcvhosts "*" --unlock "${wallet15}" --password ./.pwd --mine --gasprice "${GASPRICE}" --targetgaslimit "420000000" --verbosity ${VERBOSITY} --rpcapi admin,db,eth,debug,miner,net,shh,txpool,personal,web3,XDPoS --ethstats "207-MasterNode-15:xinfin_network_stats@localhost:3005" &
# child_proc="$child_proc $!"
# ${PROJECT_DIR}/build/bin/$Bin_NAME --bootnodes "enode://1c20e6b46ce608c1fe739e78611225b94e663535b74a1545b1667eac8ff75ed43216306d123306c10e043f228e42cc53cb2728655019292380313393eaaf6e23@127.0.0.1:30301" --syncmode "full" --datadir ./nodes/16 --networkid 94 --port 30416 --rpc --rpccorsdomain "*" --ws --wsaddr="0.0.0.0" --wsorigins "*" --wsport 8756 --rpcaddr 0.0.0.0 --rpcport 8656 --rpcvhosts "*" --unlock "${wallet16}" --password ./.pwd --mine --gasprice "${GASPRICE}" --targetgaslimit "420000000" --verbosity ${VERBOSITY} --rpcapi admin,db,eth,debug,miner,net,shh,txpool,personal,web3,XDPoS --ethstats "207-MasterNode-16:xinfin_network_stats@localhost:3005" &
# child_proc="$child_proc $!"
# ${PROJECT_DIR}/build/bin/$Bin_NAME --bootnodes "enode://1c20e6b46ce608c1fe739e78611225b94e663535b74a1545b1667eac8ff75ed43216306d123306c10e043f228e42cc53cb2728655019292380313393eaaf6e23@127.0.0.1:30301" --syncmode "full" --datadir ./nodes/17 --networkid 94 --port 30417 --rpc --rpccorsdomain "*" --ws --wsaddr="0.0.0.0" --wsorigins "*" --wsport 8757 --rpcaddr 0.0.0.0 --rpcport 8657 --rpcvhosts "*" --unlock "${wallet17}" --password ./.pwd --mine --gasprice "${GASPRICE}" --targetgaslimit "420000000" --verbosity ${VERBOSITY} --rpcapi admin,db,eth,debug,miner,net,shh,txpool,personal,web3,XDPoS --ethstats "207-MasterNode-17:xinfin_network_stats@localhost:3005" &
# child_proc="$child_proc $!"
# ${PROJECT_DIR}/build/bin/$Bin_NAME --bootnodes "enode://1c20e6b46ce608c1fe739e78611225b94e663535b74a1545b1667eac8ff75ed43216306d123306c10e043f228e42cc53cb2728655019292380313393eaaf6e23@127.0.0.1:30301" --syncmode "full" --datadir ./nodes/18 --networkid 94 --port 30418 --rpc --rpccorsdomain "*" --ws --wsaddr="0.0.0.0" --wsorigins "*" --wsport 8758 --rpcaddr 0.0.0.0 --rpcport 8658 --rpcvhosts "*" --unlock "${wallet18}" --password ./.pwd --mine --gasprice "${GASPRICE}" --targetgaslimit "420000000" --verbosity ${VERBOSITY} --rpcapi admin,db,eth,debug,miner,net,shh,txpool,personal,web3,XDPoS --ethstats "207-MasterNode-18:xinfin_network_stats@localhost:3005" &
# child_proc="$child_proc $!"

# ${PROJECT_DIR}/build/bin/$Bin_NAME --bootnodes "enode://1c20e6b46ce608c1fe739e78611225b94e663535b74a1545b1667eac8ff75ed43216306d123306c10e043f228e42cc53cb2728655019292380313393eaaf6e23@127.0.0.1:30301" --syncmode "full" --datadir ./nodes/19 --networkid 94 --port 30419 --rpc --rpccorsdomain "*" --ws --wsaddr="0.0.0.0" --wsorigins "*" --wsport 8759 --rpcaddr 0.0.0.0 --rpcport 8659 --rpcvhosts "*" --unlock "${wallet19}" --password ./.pwd --mine --gasprice "${GASPRICE}" --targetgaslimit "420000000" --verbosity ${VERBOSITY} --rpcapi admin,db,eth,debug,miner,net,shh,txpool,personal,web3,XDPoS --ethstats "207-MasterNode-19:xinfin_network_stats@localhost:3005" &
# child_proc="$child_proc $!"
# ${PROJECT_DIR}/build/bin/$Bin_NAME --bootnodes "enode://1c20e6b46ce608c1fe739e78611225b94e663535b74a1545b1667eac8ff75ed43216306d123306c10e043f228e42cc53cb2728655019292380313393eaaf6e23@127.0.0.1:30301" --syncmode "full" --datadir ./nodes/20 --networkid 94 --port 30420 --rpc --rpccorsdomain "*" --ws --wsaddr="0.0.0.0" --wsorigins "*" --wsport 8760 --rpcaddr 0.0.0.0 --rpcport 8660 --rpcvhosts "*" --unlock "${wallet20}" --password ./.pwd --mine --gasprice "${GASPRICE}" --targetgaslimit "420000000" --verbosity ${VERBOSITY} --rpcapi admin,db,eth,debug,miner,net,shh,txpool,personal,web3,XDPoS --ethstats "207-MasterNode-20:xinfin_network_stats@localhost:3005" &
# child_proc="$child_proc $!"
# ${PROJECT_DIR}/build/bin/$Bin_NAME --bootnodes "enode://1c20e6b46ce608c1fe739e78611225b94e663535b74a1545b1667eac8ff75ed43216306d123306c10e043f228e42cc53cb2728655019292380313393eaaf6e23@127.0.0.1:30301" --syncmode "full" --datadir ./nodes/21 --networkid 94 --port 30421 --rpc --rpccorsdomain "*" --ws --wsaddr="0.0.0.0" --wsorigins "*" --wsport 8761 --rpcaddr 0.0.0.0 --rpcport 8661 --rpcvhosts "*" --unlock "${wallet21}" --password ./.pwd --mine --gasprice "${GASPRICE}" --targetgaslimit "420000000" --verbosity ${VERBOSITY} --rpcapi admin,db,eth,debug,miner,net,shh,txpool,personal,web3,XDPoS --ethstats "207-MasterNode-21:xinfin_network_stats@localhost:3005" &
# child_proc="$child_proc $!"
# ${PROJECT_DIR}/build/bin/$Bin_NAME --bootnodes "enode://1c20e6b46ce608c1fe739e78611225b94e663535b74a1545b1667eac8ff75ed43216306d123306c10e043f228e42cc53cb2728655019292380313393eaaf6e23@127.0.0.1:30301" --syncmode "full" --datadir ./nodes/22 --networkid 94 --port 30422 --rpc --rpccorsdomain "*" --ws --wsaddr="0.0.0.0" --wsorigins "*" --wsport 8762 --rpcaddr 0.0.0.0 --rpcport 8662 --rpcvhosts "*" --unlock "${wallet22}" --password ./.pwd --mine --gasprice "${GASPRICE}" --targetgaslimit "420000000" --verbosity ${VERBOSITY} --rpcapi admin,db,eth,debug,miner,net,shh,txpool,personal,web3,XDPoS --ethstats "207-MasterNode-22:xinfin_network_stats@localhost:3005" &
# child_proc="$child_proc $!"
# ${PROJECT_DIR}/build/bin/$Bin_NAME --bootnodes "enode://1c20e6b46ce608c1fe739e78611225b94e663535b74a1545b1667eac8ff75ed43216306d123306c10e043f228e42cc53cb2728655019292380313393eaaf6e23@127.0.0.1:30301" --syncmode "full" --datadir ./nodes/23 --networkid 94 --port 30423 --rpc --rpccorsdomain "*" --ws --wsaddr="0.0.0.0" --wsorigins "*" --wsport 8763 --rpcaddr 0.0.0.0 --rpcport 8663 --rpcvhosts "*" --unlock "${wallet23}" --password ./.pwd --mine --gasprice "${GASPRICE}" --targetgaslimit "420000000" --verbosity ${VERBOSITY} --rpcapi admin,db,eth,debug,miner,net,shh,txpool,personal,web3,XDPoS --ethstats "207-MasterNode-23:xinfin_network_stats@localhost:3005" &
# child_proc="$child_proc $!"
# ${PROJECT_DIR}/build/bin/$Bin_NAME --bootnodes "enode://1c20e6b46ce608c1fe739e78611225b94e663535b74a1545b1667eac8ff75ed43216306d123306c10e043f228e42cc53cb2728655019292380313393eaaf6e23@127.0.0.1:30301" --syncmode "full" --datadir ./nodes/24 --networkid 94 --port 30424 --rpc --rpccorsdomain "*" --ws --wsaddr="0.0.0.0" --wsorigins "*" --wsport 8764 --rpcaddr 0.0.0.0 --rpcport 8664 --rpcvhosts "*" --unlock "${wallet24}" --password ./.pwd --mine --gasprice "${GASPRICE}" --targetgaslimit "420000000" --verbosity ${VERBOSITY} --rpcapi admin,db,eth,debug,miner,net,shh,txpool,personal,web3,XDPoS --ethstats "207-MasterNode-24:xinfin_network_stats@localhost:3005"