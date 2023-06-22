#!/bin/bash

#function_name () {
#    commands
#}

#OR

#function function_name {
#    commands
#}


function _create_usr {
    read -p "enter username: " username
    read -sp "enter password: " password
    useradd $username -p $password -c "User created through script"

    echo $(id $username | awk -F " " '{ print $1}')
}

user_uid=$(_create_usr)

echo $user_uid