#!/bin/bash

# This script demonstrates the correct way to process a file asynchronously in Bash,
avoiding the race condition.

file="my_file.txt"
touch "$file"

# Simulate an asynchronous operation (replace with your actual process)
(sleep 1; echo "Processed" > "$file") & pid=$!

# Wait for the asynchronous process to complete before reading the file.
wait "$pid"

echo "File content: $(cat "$file")"
echo "Done"