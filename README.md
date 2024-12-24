# Bash Race Condition: Asynchronous File Processing

This repository demonstrates a race condition in a bash script that performs asynchronous file processing without proper synchronization mechanisms.

The `bug.sh` script shows the flawed approach, where the script reads a file before an asynchronous process that modifies the file has completed. This can lead to the script reading an empty or incomplete file, resulting in inconsistent behaviour.

The `bugSolution.sh` script presents a corrected version, using the `wait` command to ensure the asynchronous process finishes before the script proceeds to read the file.  This guarantees consistent and reliable results.

## How to Reproduce
1. Clone this repository.
2. Run `bash bug.sh` to observe the race condition.
3. Run `bash bugSolution.sh` to see the corrected version.