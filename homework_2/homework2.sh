#!/bin/bash

function countdown() {
  local timer=$1

  # Check if timer is a positive integer
  if [[ ! $timer =~ ^[1-9][0-9]*$ ]]; then
    echo "Invalid input. Please provide a positive integer."
    return 1
  fi

  while (( timer > 0 )); do
    IFS= read -n1 -t 1 -p "Countdown $timer seconds (press <Space> to pause, 'c' to cancel)" userInput
    echo ""

    if [[ $userInput == " " ]]; then
      userInput=not_space
      while [[ $userInput != " " ]]; do
        IFS= read -n1 -p "Paused, $timer seconds left (press <Space> to resume, 'c' to cancel)" userInput
        echo ""
      done
    elif [[ $userInput == "c" ]]; then
      echo "Countdown canceled."
      return 0
    elif [[ -n $userInput ]]; then
      echo "You pressed '$userInput', press <Space> to pause or 'c' to cancel!"
    fi

    timer=$((timer - 1))
  done

  echo "Countdown finished."
  return 0
}

countdown 10