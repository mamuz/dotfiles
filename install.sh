#!/usr/bin/env bash

git pull origin master;

if [[ "$OSTYPE" == "linux-gnu" ]]; then # GNU
	source ./apt.sh
else # macOS
	source ./brew.sh
fi

rsync -bavh --no-perms ./custom/.* ~;
