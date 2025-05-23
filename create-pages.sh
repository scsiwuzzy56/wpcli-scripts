#!/bin/bash

# This script creates WordPress pages from a text file
# Made for a server using HestiaCP or similar

while IFS= read -r title; do
 /home/devuser1/.wp-cli/wp post create --post_type=page --post_title="$title" --post_status=publish
done < page-titles.txt
