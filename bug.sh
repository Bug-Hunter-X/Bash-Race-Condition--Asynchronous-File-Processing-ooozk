#!/bin/bash

# This script attempts to process a file, but it has a subtle race condition.
# The issue is that the file processing happens asynchronously and the script does not wait for it to complete before continuing.

file="my_file.txt"
touch "$file"

# Simulate an asynchronous operation (replace with your actual process)
(sleep 1; echo "Processed" > "$file") & pid=$!

# The script immediately continues after launching the asynchronous task. This leads to a race condition.
# If the script reads the file before the processing is complete, it will read an empty file.
echo "File content: $(cat "$file")"

wait "$pid"
echo "Done"