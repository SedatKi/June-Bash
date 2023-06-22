#!/bin/bash

    echo "--- Script to create Linux users ---"
    read -p "How many users: " user_ct

    if [ $user_ct -gt 1 ]; then
        echo "Creating multi-users"
        for user in $(seq 1 $user_ct); do
            read -p "enter username: " username
            read -sp "enter password: " password
        # -s for sensitive
            useradd $username -p $password -c "User created through script"
        done
        
    elif [ $user_ct -eq 1 ]; then
        echo "Creating single-user: "
        read -p "enter username: " username
        read -sp "enter password: " password
        # -s for sensitive
        read -p "enter user uid: " uid
        useradd $username -p $password -u $uid -c "User created through script"

    else
        echo "Wrong input. Try again"
    fi