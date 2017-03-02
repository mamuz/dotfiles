#!/usr/bin/env bash

git pull origin master

if [[ "$OSTYPE" = darwin* ]]; then
	source ./brew.sh
else
    source ./apt.sh
fi

rsync --exclude ".DS_Store" -bavh --no-perms ./home/ ~

echo "Done."
