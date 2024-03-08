#!/bin/bash

# Define the location for the update script and the URL from where to fetch it
SCRIPT_URL="https://raw.githubusercontent.com/xvertile/proxies-domain-blacklist/main/update-hosts.sh"
SCRIPT_PATH="/tmp"

# Download the update script to the bin directory
curl -s $SCRIPT_URL -o $SCRIPT_PATH

# Make the script executable
chmod +x $SCRIPT_PATH

# Add the script to crontab to run hourly
(crontab -l 2>/dev/null; echo "0 * * * * $SCRIPT_PATH") | crontab -

echo "Deployment successful. The update script will run hourly."
