#!/bin/bash

#curl --request GET \ ## or -x GET
  #-H "Accept: application/vnd.github+json" \
   # https://api.github.com/repos/SedatKi/June-Bash


repo_name=$(curl -X GET -H "Accept: application/vnd.github+json" https://api.github.com/repos/SedatKi/June-Bash | jq -r '.name')
echo $repo_name