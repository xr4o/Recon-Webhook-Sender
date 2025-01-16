#!/bin/bash

# Title of the script
echo "Recon Sender"

# Prompt for the webhook URL
read -p "Webhook: " webhook

# Loop to send messages
while true; do
    clear
    # Prompt for the message
    read -p "Message: " message

    # Send the message using curl
    curl -X POST -H "Content-Type: application/json" -d "{\"content\": \"$message\"}" "$webhook"

    # Optional: Break the loop if needed
    echo
    read -p "Send another message? (y/n): " choice
    if [[ $choice != "y" ]]; then
        break
    fi
done
