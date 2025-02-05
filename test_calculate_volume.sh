#!/bin/bash

# Test 1: Test with positive integers
result=$(./calculate_volume.sh 3 4 5)
expected=60
if [ "$result" -eq "$expected" ]; then
    echo "Test 1 Passed"
else
    echo "Test 1 Failed"
fi

# Test 2: Test with zero dimensions
result=$(./calculate_volume.sh 0 0 0)
expected=0
if [ "$result" -eq "$expected" ]; then
    echo "Test 2 Passed"
else
    echo "Test 2 Failed"
fi


