#!/bin/bash

#curl --request GET \ ## or -x GET
  #-H "Accept: application/vnd.github+json" \
   # https://api.github.com/repos/SedatKi/June-Bash


#repo_name=$(curl -X GET -H "Accept: application/vnd.github+json" https://api.github.com/repos/SedatKi/June-Bash | jq -r '.name')
#echo $repo_name

num_repos="$(curl -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $GITHUB_TOKEN"\
  https://api.github.com/users/SedatKi/repos | jq length)"

all_repos="$(curl -H "Accept: application/vnd.github+json" -H "Authorization: Bearer $GITHUB_TOKEN" https://api.github.com/users/SedatKi/repos)"

if [ "$num_repos" -le 1 ]; then
  echo "You only have $num_repos"
else
  for repo in $(seq 0 $num_repos); do
    name=$(echo $all_repos | jq -r ".[$repo].name")
    if [[ $name = "$1" ]]; then
      echo "Your repo exists $name"
    fi
  
 # for repo in $(curl -H "Accept: application/vnd.github+json" -H "Authorization: Bearer $GITHUB_TOKEN" https://api.github.com/users/SedatKi/repos)"; do
  #  repo_name=$(echo $repo | jq -r .name)
  #  echo $repo_name
   # if [$repo_name == "June-Bash" ]; then
  #      echo "Your repo June-Bash is available"
 #   fi
 done
fi
