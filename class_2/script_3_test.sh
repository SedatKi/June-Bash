#!/bin/bash

read -p "What is your name? : " name

if [ $name = "Sedat" ]; then
    echo "Welcome back Sir"
else 
    echo "Welcome $name"
fi
