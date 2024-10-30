#!/bin/bash

# Test cases
inputs=(
  "[2, 7, 11, 15], 9"
  "[3, 2, 4], 6"
  "[3, 3], 6"
)
expected_outputs=(
  "[0, 1]"
  "[1, 2]"
  "[0, 1]"
)

# Initialize pass counter
pass_count=0

# Loop through each test case
for i in "${!inputs[@]}"; do
  input="${inputs[$i]}"
  expected_output="${expected_outputs[$i]}"

  # Run the Python script with the input and capture the output
  output=$(python3 -c "from main import twoSum; nums, target = ${input}; print(twoSum(nums, target))")

  # Compare the output with the expected output
  if [ "$output" == "$expected_output" ]; then
    echo "Test case $((i+1)): Passed / answer: $expected_output, Got: $output"
    ((pass_count++))
  else
    echo "Test case $((i+1)): Failed / answer: $expected_output, Got: $output"
  fi
done

# Print summary
echo "$pass_count/${#inputs[@]} test cases passed"
