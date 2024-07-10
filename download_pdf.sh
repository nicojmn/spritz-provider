#!/bin/bash

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: $0 <URL> <Output File Name>"
    exit 1
fi

URL="$1"
OUTPUT_FILE="$2"
SAVE_DIR="pdf"

if [ ! -d "$SAVE_DIR" ]; then
    mkdir -p "$SAVE_DIR"
fi

curl -o "$SAVE_DIR/$OUTPUT_FILE" "$URL"

if [ $? -eq 0 ]; then
    echo "PDF downloaded successfully to $SAVE_DIR/$OUTPUT_FILE"
else
    echo "Failed to download PDF"
fi