#!/bin/bash

echo "Downloading song..."
curl "http://forrykt.com/push-it/push-it.m4a" > ~/Music/push-it.m4a

echo "Applying commit-msg hook..."
curl "http://forrykt.com/push-it/commit-msg" > .git/hooks/commit-msg
chmod +x .git/hooks/commit-msg

echo "Done."
