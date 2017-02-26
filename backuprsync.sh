#!/bin/sh

source=/home/
target=/backup/
today=$(date +%Y-%m-%d)

rsync -avR --delete "${source}"  "${target}${today}/" --link-dest="${target}last/"
ln -nsf "${target}${today}" "${target}last"

exit 0
