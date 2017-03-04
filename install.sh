#!/usr/bin/env bash

git pull origin master

if [[ "$OSTYPE" = darwin* ]]; then
	source ./brew.sh
else
    source ./apt.sh
fi

cp -R -i --backup=numbered --suffix=_ ./home/.* ~

echo "Done."
