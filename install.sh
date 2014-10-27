#!/bin/bash

echo "Downloading song..."
curl -s --location "https://raw.github.com/jgorset/push-it/master/push-it.mp3" > ~/Music/push-it.mp3

echo "Applying commit-msg hook..."
curl -s --location "https://raw.github.com/jgorset/push-it/master/commit-msg" > .git/hooks/commit-msg
chmod +x .git/hooks/commit-msg

echo "Done."
