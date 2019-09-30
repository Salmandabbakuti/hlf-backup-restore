# Backup and Restore Hyperledger Fabric Network

#### Backup Files
1. Crypto certificates of all participants (crypto-config directory)

2.Channel and genesis Configuration files (config directory)

3. Peer file system (can be found in peer container ```/var/hyperledger/production/``` )

4. Orderer file system(can be found in ```/var/hyperledger/production/orderer/``` )


If we could mount these files in exact locations as they are in previously, we are done. That all We've done in ```backup.sh``` and ```restore.sh```..

### Quick Test

```
cd client 
cd ./start.sh #Run Some Normal operations
cd ..
cd basic-network
./backup.sh # Takes backup of current state

./restore.sh #Restores network to the backup state
```
