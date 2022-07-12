#!/bin/bash
# utility to confirm the hash of /src files against the hash in canvas.md

canvas_HASH=$(awk -F"MD5=" '{if ($2) print $2}' canvas.md)
files_HASH=$(md5sum src/ */* 2>/dev/null | md5sum | awk -F" " '{if ($1) print $1}')
if [ $canvas_HASH == $files_HASH ]; then
  echo "Canvas HASH matches File HASH"
else 
  echo "ERROR: Canvas HASH does not match File HASH"
fi
  