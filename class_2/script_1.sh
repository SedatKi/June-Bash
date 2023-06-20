#!/bin/bash

sudo yum update rpm -y; sudo yum update -y 

git -v
status_code=$(echo $?)
if [ $status_code -eq 0 ]; then
    echo "Git is already installed!"
else
    echo "Installing Git"
    sudo yum install git -y
fi

echo "To set up your git please enter the following info ---"
read -p "Enter your name: " name
read -p "Enter your email: " email

git config --global user.name $name
git config --global user.email $email

read -p "Paste your repo link: " repo

git clone $repo $1 || echo "This is expected"
