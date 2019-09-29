set -ev

sudo rm -rf backup
mkdir backup
#Copying Certificates and Configuration files

cp -r crypto-config backup
cp -r config backup
cp -r restore-network.yml backup

cd backup
mkdir peer
mkdir orderer
cd ..
#Copying Peer and orderer data

docker cp peer0.org1.example.com:/var/hyperledger/production/ backup/peer/
docker cp orderer.example.com:/var/hyperledger/production/orderer/ backup/orderer/

#All done
exit 1
