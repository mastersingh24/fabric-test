#!/bin/bash
#
# Copyright IBM Corp. All Rights Reserved.
#
# SPDX-License-Identifier: Apache-2.0
#
CurrentDirectory=$(cd `dirname $0` && pwd)
FabricTestDir="$(echo $CurrentDirectory | awk -F'/fabric/' '{print $1}')/fabric-test"
OUTPUT_DIR_ROOT=$FabricTestDir"/tools/LTE/TestResults"
DataDir="/tmp/fabric/test/tools/LTE/data"
UseJSONFormat="false"
NumChains=10
NumParallelTxPerChain=10
NumKVs=100000
NumTotalTx=100000
NumWritesPerTx=4
NumReadsPerTx=4
BatchSize=50
KVSize=200

# Each test consists of several test-runs, where one single parameter is varied
# between the test-runs and rest of the parameters remain same. Each array below
# holds the values of that parameter for each corresponding test. For example,
# the "ArrayNumChains" will be used in the test titled "varyNumChains", and the
# 8 test-runs that exist for testing the varying number of chains will use these
# values:
# NumChains = (1 5 10 20 50 100 500 2000)
# NumParallelTxPerChain=10
# NumKVs=100000
# NumTotalTx=100000
# NumWritesPerTx=4
# BatchSize=50
# KVSize=200
ArrayNumParallelTxPerChain=(1 5 10 20 50 100 500 2000)
ArrayNumChains=(1 5 10 20 50 100 500 2000)
ArrayNumWritesPerTx=(1 2 5 10 20)
ArrayNumReadsPerTx=(1 2 5 10 20)
ArrayKVSize=(100 200 500 1000 2000)
ArrayBatchSize=(10 20 100 500)
ArrayNumParallelTxWithSingleChain=(1 5 10 20 50 100 500 2000)
ArrayNumChainsWithNoParallelism=(1 5 10 20 50 100 500 2000)
ArrayNumTxs=(100000 200000 500000 1000000)
