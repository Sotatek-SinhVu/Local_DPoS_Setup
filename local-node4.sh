#!/bin/bash
export $(cat .env | xargs)
Bin_NAME=XDC
WORK_DIR=$PWD
PROJECT_DIR="/Volumes/Works/xinfin/Local_XDPoS_TestNet_Apothem"
cd $PROJECT_DIR && make $Bin_NAME
cd $WORK_DIR

if [ ! -d ./nodes/4/$Bin_NAME/chaindata ]
then
  wallet4=$(${PROJECT_DIR}/build/bin/$Bin_NAME account import --password .pwd --datadir ./nodes/4 <(echo ${PRIVATE_KEY_4}) | awk -v FS="({|})" '{print $2}')
  ${PROJECT_DIR}/build/bin/$Bin_NAME --datadir ./nodes/4 init ./genesis/genesis.json
else
  wallet4=$(${PROJECT_DIR}/build/bin/$Bin_NAME account list --datadir ./nodes/4 | head -n 1 | awk -v FS="({|})" '{print $2}')
fi

VERBOSITY=3
GASPRICE="1"

echo Starting the nodes ...
${PROJECT_DIR}/build/bin/$Bin_NAME --bootnodes "enode://ec569f5d52cefee5c5405a0c5db720dc7061f3085e0682dd8321413430ddda6a177b85db75b0daf83d2e68760ba3f5beb4ba9e333e7d52072fba4d39b05a0451@127.0.0.1:30301" --syncmode 'full' --datadir ./nodes/4 --networkid 94 --port 30404 --rpc --rpccorsdomain "*" --ws --wsaddr="0.0.0.0" --wsorigins "*" --wsport 8654 --rpcaddr 0.0.0.0 --rpcport 8548 --rpcvhosts "*" --allow-insecure-unlock --unlock "${wallet4}" --password ./.pwd --mine --miner.gasprice "${GASPRICE}" --targetgaslimit "420000000" --verbosity ${VERBOSITY} --ethstats "XinFin-MasterNode-04:xinfin_network_stats@localhost:3005" 
