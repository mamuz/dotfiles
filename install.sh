#!/usr/bin/env bash

git pull origin master

if [[ "$OSTYPE" = darwin* ]]; then
	source ./brew.sh
else
    source ./apt.sh
fi

cp -R --backup=numbered --suffix=_ ./home/.* ~

echo "Done."
