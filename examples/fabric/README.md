# Fabric Example

This directory contains the useful material to reproduce Hyperledger Fabric by umbra.

The files/folder structure is described below:
- base_configtx: contains all the source material for the creation of the configtx.yaml file needed by Fabric (e.g., python SDK, configtxgen, etc).
- chaincode: contains source code with examples of chaincode to be executed by the Fabric network on umbra.
- fabric_configs: contains all the skeleton of configuration files to execute Fabric.
- build_configs.py: a python script, making use of umbra-configs module, to create Fabric configuration files (placed in fabric_configs) enabling Fabric to be executed by umbra.
- build_reqs.sh: a bash script that downloads and installs all the requirements needed by umbra to execute a Fabric network.

## Installing Requirements

```bash
$ sudo ./build_reqs.sh
```

## Generating the Configuration Files

```bash
$ /usr/bin/python3 build_configs.py 
```


## Running

To start running the experiments defined by the generated configuration files, run:

```bash
cd ..
$ sudo -H ./run.sh start -c ./fabric/fabric_configs/config_fabric_simple.json 
```

To stop and clean the experiment, run:

```bash
cd ..
$ sudo -H ./run.sh stop
```