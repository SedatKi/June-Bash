#!/bin/bash 


curl -X POST -H "Content-Type: application/json" \
    -H "Access-Control-Allow-Headers: Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token" \
    -H "Access-Control-Allow-Origin*: *" \
    -d '{"name": "NAME_HERE", "email": "sedatkirgiz11@gmail.com", "service": "bootcamp", "message": "Hey there, this is my api call to aKumo"}'\
    https://api.dev.akumosolutions.io/v1/contactus