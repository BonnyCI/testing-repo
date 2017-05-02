#!/bin/bash -xe

echo $BONNYCI_TEST_PIPELINE > $BONNYCI_TEST_LOG_DIR/pipeline
dmesg >$BONNYCI_TEST_LOG_DIR/dmesg
sleep 30
echo "True"