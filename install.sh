#!/usr/bin/env bash

git pull origin master;

if [[ "$OSTYPE" = darwin* ]]; then
	source ./brew.sh
else
    source ./apt.sh
fi

rsync -bavh --no-perms ./home/.* ~;
