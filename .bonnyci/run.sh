#!/bin/bash

FAIL_CHECK=0
FAIL_GATE=1
TEST_OUTPUT="XXX TEST_ID: 7f00d570-9a16-4344-acdc-f70661bd3b2d"

echo "$TEST_OUTPUT"

case "$BONNYCI_TEST_PIPELINE" in
    "check") [[ "$FAIL_CHECK" == 1 ]] && exit 1 ;;
    "gate") [[ "$FAIL_GATE" == 1 ]] && exit 1 ;;
esac

exit 0