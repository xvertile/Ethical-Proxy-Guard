#!/bin/bash

# Define the location for the update script
SCRIPT_PATH="/usr/local/bin/update-hosts.sh"

# Copy the update script to the bin directory and make it executable
cp update-hosts.sh $SCRIPT_PATH
chmod +x $SCRIPT_PATH

# Add the script to crontab to run hourly
(crontab -l 2>/dev/null; echo "0 * * * * $SCRIPT_PATH") | crontab -

echo "Deployment successful. The update script will run hourly."
