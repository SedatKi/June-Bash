#!/bin/bash
## Must have Applications!

read -p "Hello user, you are about to download many packages. Is this okay? (Y/N): " confirmation

    if [[ $confirmation =~ ^[Yy]$ ]]; then
    read -p "This process may take up to 30 minutes, are you sure you want to proceed? (Y/N): " confirmation2

        if [[ $confirmation =~ ^[Yy]$ ]]; then
        echo "Confirmation success. Starting now.."

            sudo dnf update rpm -y; sudo dnf update -y; sudo dnf install epel-release -y
            sudo dnf install net-tools -y; sudo dnf install htop -y; 
            sudo dnf install wget -y

        else
        echo "Confirmation failed. Exiting now."
        exit 1
        fi
    
    else 
    echo "Confirmation failed. Exiting."
    exit 1 
fi

