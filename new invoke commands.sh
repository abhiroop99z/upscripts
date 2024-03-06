
#Invoke x100 message request

#Org1

export PATH=${PWD}/bin:$PATH
export FABRIC_CFG_PATH=$PWD/../config/
export CORE_PEER_TLS_ENABLED=true
export CORE_PEER_LOCALMSPID="Org1MSP"
export CORE_PEER_TLS_ROOTCERT_FILE=${PWD}/organizations/peerOrganizations/merchantOrg1.hlfcards.com/peers/peer0.merchantOrg1.hlfcards.com/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=${PWD}/organizations/peerOrganizations/merchantOrg1.hlfcards.com/users/Admin@merchantOrg1.hlfcards.com/msp
export CORE_PEER_ADDRESS=localhost:7051

peer chaincode invoke -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com --tls --cafile "${PWD}/organizations/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem" -C channel1 -n PYMTUtilsCC --peerAddresses localhost:7051 --tlsRootCertFiles "${PWD}/organizations/peerOrganizations/merchantOrg1.hlfcards.com/peers/peer0.merchantOrg1.hlfcards.com/tls/ca.crt" -c '{"function":"requestX100Tx","Args":["MID001","CID001","LR001","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18", "19", "20", "x100"]}'


#Invoke x110 message request

peer chaincode invoke -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com --tls --cafile "${PWD}/organizations/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem" -C channel1 -n PYMTUtilsCC -c '{"function":"requestX110Tx","Args":["MID001","CID001","LR001","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18", "19", "20", "21", "22", "x110"]}'


#Query everything:


#Org1

export PATH=${PWD}/bin:$PATH
export FABRIC_CFG_PATH=$PWD/../config/
export CORE_PEER_TLS_ENABLED=true
export CORE_PEER_LOCALMSPID="Org1MSP"
export CORE_PEER_TLS_ROOTCERT_FILE=${PWD}/organizations/peerOrganizations/merchantOrg1.hlfcards.com/peers/peer0.merchantOrg1.hlfcards.com/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=${PWD}/organizations/peerOrganizations/merchantOrg1.hlfcards.com/users/Admin@merchantOrg1.hlfcards.com/msp
export CORE_PEER_ADDRESS=localhost:7051

peer chaincode invoke -o localhost:7050 --ordererTLSHostnameOverride orderer.example.com --tls --cafile "${PWD}/organizations/ordererOrganizations/example.com/orderers/orderer.example.com/msp/tlscacerts/tlsca.example.com-cert.pem" -C channel1 -n PYMTUtilsCC -c '{"function":"GetTxByRange","Args":["",""]}'

