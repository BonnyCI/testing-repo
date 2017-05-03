#!/bin/bash

FAIL_CHECK=1
FAIL_GATE=1
TEST_OUTPUT="XXX TEST_ID: 033715ac-ffc1-4098-b2ab-bbb780eb988c"

echo "$TEST_OUTPUT"

case "$BONNYCI_TEST_PIPELINE" in
    "check") [[ "$FAIL_CHECK" == 1 ]] && exit 1 ;;
    "gate") [[ "$FAIL_GATE" == 1 ]] && exit 1 ;;
esac

exit 0