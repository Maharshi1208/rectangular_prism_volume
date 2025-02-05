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

# Test 3: Negative numbers should return an error
result=$(./calculate_volume.sh -5 4 6)
if [[ "$result" == *"Error: Please enter valid positive integers."* ]]; then
    echo "Test 3 Passed ✅"
else
    echo "Test 3 Failed ❌"
fi

# Test 4: large numbers should give error
result=$(./calculate_volume.sh 15000 140000 450000)
expected=6000000000000
if [ "$result" -eq "$expected" ]; then
    echo "Test 4 Passed ✅"
else
    echo "Test 4 Failed ❌"
fi


