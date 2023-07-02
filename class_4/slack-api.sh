#!/bin/bash

function slack_message() {
    local message=$1
curl -X POST \
    -H 'Content-type: application/json' \
    --data '{"text":"'"$message"'"}' $SLACK_URL
}

# slack_message "HEY!"

droplets="""$(curl -X GET \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $DIGITALOCEAN_TOKEN" \
  "https://api.digitalocean.com/v2/droplets")"""

 #echo $droplets | jq #.droplets[1].name will give you your first droplet name
 droplet_name=$(echo $droplets | jq -r .droplets[3].name)
 droplet_status=$(echo $droplets | jq -r .droplets[3].status)

 slack_message "My Droplet *$droplet_name* is currently *$droplet_status* :doge:"
