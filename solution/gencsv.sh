#!/bin/bash

# Check if two arguments are passed
if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <start_index> <end_index>"
  exit 1
fi

start=$1
end=$2

# Validate if start <= end
if [ "$start" -gt "$end" ]; then
  echo "Error: Start index must be less than or equal to end index."
  exit 1
fi

# Output file
output_file="inputFile"

# Clear or create the file
> "$output_file"

# Generate data
for (( i=start; i<=end; i++ )); do
  random_num=$(( RANDOM % 1000 ))  # Random number between 0-999
  echo "$i, $random_num" >> "$output_file"
done

echo "File '$output_file' generated with entries from $start to $end."

