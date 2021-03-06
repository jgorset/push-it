#!/bin/bash

echo "
      ___  __  ________ __    __________
     / _ \/ / / / __/ // /   /  _/_  __/
    / ___/ /_/ /\ \/ _  /   _/ /  / /
   /_/   \____/___/_//_/   /___/ /_/
"

echo "Downloading songs..."
curl --progress-bar --location "https://raw.github.com/jgorset/push-it/master/push-it.mp3" > ~/Music/push-it.mp3
curl --progress-bar --location "https://raw.github.com/jgorset/push-it/master/push-it-to-the-limit.mp3" > ~/Music/push-it-to-the-limit.mp3
echo ""

echo "Applying commit-msg hook..."
curl -s --location "https://raw.github.com/jgorset/push-it/master/commit-msg" > .git/hooks/commit-msg
chmod +x .git/hooks/commit-msg

echo "Applying pre-push hook..."
curl -s --location "https://raw.github.com/jgorset/push-it/master/pre-push" > .git/hooks/pre-push
chmod +x .git/hooks/pre-push

echo "Done."
