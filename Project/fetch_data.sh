#!/bin/bash

curl -s -A "reddit scraper example" https://www.reddit.com/r/MildlyInteresting.json | jq '.data.children | .[] | .data.title, .data.url, .data.permalink'
