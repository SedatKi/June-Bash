#!/bin/bash

# Set the subreddit and API endpoint
local subreddit="soccer"
api_url="https://www.reddit.com/r/$subreddit/top.json?sort=top&t=day&limit=1"

# Make the API request and retrieve the top post
response=$(curl -s "$api_url")

# Extract the title and URL of the top post from the response
title=$(echo "$response" | jq -r '.data.children[0].data.title')
url=$(echo "$response" | jq -r '.data.children[0].data.url')

# Display the top post information
echo "Title: $title"
echo "URL: $url"
