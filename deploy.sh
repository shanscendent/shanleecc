#!/bin/bash
# Builds site and copies the output to the server

hugo -D

echo "Copying..."
rsync -r --delete public/ shanultr:~/dc/shanleecc/config/www/

echo "Successfully deployed."