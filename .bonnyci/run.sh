#!/bin/bash

FAIL_CHECK=1
FAIL_GATE=1
TEST_OUTPUT="XXX TEST_ID: 293839a3-69fd-4be4-b336-3734f4bf9e03"

echo "$TEST_OUTPUT"

case "$BONNYCI_TEST_PIPELINE" in
    "check") [[ "$FAIL_CHECK" == 1 ]] && exit 1 ;;
    "gate") [[ "$FAIL_GATE" == 1 ]] && exit 1 ;;
esac

exit 0