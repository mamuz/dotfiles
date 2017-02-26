#!/usr/bin/env bash

git pull origin master;
rsync -bavh --no-perms custom/.* ~;
