#!/bin/bash
export $(cat .env | xargs)
Bin_NAME=XDC
WORK_DIR=$PWD
PROJECT_DIR="/Volumes/Works/xinfin/Local_XDPoS_TestNet_Apothem"
cd $PROJECT_DIR && make $Bin_NAME
cd $WORK_DIR

if [ ! -d ./nodes/5/$Bin_NAME/chaindata ]
then
  wallet5=$(${PROJECT_DIR}/build/bin/$Bin_NAME account import --password .pwd --datadir ./nodes/5 <(echo ${PRIVATE_KEY_5}) | awk -v FS="({|})" '{print $2}')
  ${PROJECT_DIR}/build/bin/$Bin_NAME --datadir ./nodes/5 init ./genesis/genesis.json
else
  wallet5=$(${PROJECT_DIR}/build/bin/$Bin_NAME account list --datadir ./nodes/5 | head -n 1 | awk -v FS="({|})" '{print $2}')
fi

VERBOSITY=3
GASPRICE="1"

echo Starting the nodes ...
${PROJECT_DIR}/build/bin/$Bin_NAME --bootnodes "enode://7d8ffe6d28f738d8b7c32f11fb6daa6204abae990a842025b0a969aabdda702aca95a821746332c2e618a92736538761b1660aa9defb099bc46b16db28992bc9@127.0.0.1:30301" --syncmode 'full' --datadir ./nodes/5 --networkid 94 --port 30405 --rpc --rpccorsdomain "*" --ws --wsaddr="0.0.0.0" --wsorigins "*" --wsport 8655 --rpcaddr 0.0.0.0 --rpcport 8549 --rpcvhosts "*" --unlock "${wallet5}" --password ./.pwd --mine --gasprice "${GASPRICE}" --targetgaslimit "420000000" --verbosity ${VERBOSITY} --ethstats "XinFin-MasterNode-05:xinfin_network_stats@localhost:3005" 
