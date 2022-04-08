
#!/bin/bash

source chainenv

#init network
bnbchaind init --acc-prefix ${ACC_PREFIX} --home-client ${HOME_CLIENT} --chain-id ${CHAINID} --moniker ${MONKIER} --home ${HOME_NET} >> ${HOME_NET}/netinfo.txt

#init node
bnbchaind testnet --acc-prefix ${ACC_PREFIX} --chain-id ${CHAINID} --v ${VAL_NUM} --output-dir ${OUTPUT_DIR} --starting-ip-address $MYIP --monikers ${MONKIER} --home ${HOME_NET} >> ${HOME_NET}/client.txt

#start node
bnbchaind start --home ${OUTPUT_DIR}/node0/gaiad
