#!/bin/bash

echo "Downloading song..."
curl -s "http://forrykt.com/push-it/push-it.mp3" > ~/Music/push-it.mp3

echo "Applying commit-msg hook..."
curl -s "http://forrykt.com/push-it/commit-msg" > .git/hooks/commit-msg
chmod +x .git/hooks/commit-msg

echo "Done."
