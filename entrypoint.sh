#!/bin/bash
set -e

cf login -a "$INPUT_API" -u "$INPUT_USERNAME" -p "$INPUT_PASSWORD" -o "$INPUT_ORG" -s "$INPUT_SPACE"

cf deploy "$INPUT_MTAFILE" -f

echo "Deploy script done."