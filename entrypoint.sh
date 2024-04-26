#!/bin/sh -l

# Use INPUT_<INPUT_NAME> to get the value of an input
GREETING="Hello, $INPUT_WHO_TO_GREET!"

# Use workflow commands to do things like set debug messages
echo "::notice file=entrypoint.sh,line=7::$GREETING"

# Write outputs to the $GITHUB_OUTPUT file
echo "time=$(date)" >>"$GITHUB_OUTPUT"

echo "starting to download the dummy image: https://placehold.co/600x400/orange/olive/png"
curl -s -S -o "file.png" https://placehold.co/600x400/orange/olive/png

echo "current directory: $(pwd)"
echo "files in directory: $(ls -la)"

echo "move files to /github/workspace"
mv file.png /github/workspace

echo "/github/workspace: $(ls -la /github/workspace)"

exit 0
