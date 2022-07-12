#!/bin/bash
# Script to add an MD5 sum of all hash's of all the files in the /src folder
md5sum src/ */* 2>/dev/null > files.md5
HASH=$(md5sum ./files.md5 | awk -F" " '{if ($1) print $1}')
sed -i "/Code_MD5=/c\Code_MD5=$HASH" canvas.md
rm files.md5
# ---------------------------------------------------------

