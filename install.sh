#!/bin/bash

curl "http://forrykt.com/push-it/push-it.m4a" > ~/Music/push-it.m4a
curl "http://forrykt.com/push-it/commit-msg" > .git/hooks/commit-msg
chmod +x .git/hooks/commit-msg
