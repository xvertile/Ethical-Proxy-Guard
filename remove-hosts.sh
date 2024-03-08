#!/bin/bash

# Define variables
HOSTS_FILE="/etc/hosts"
START_MARKER="# Start of proxies-domain-blacklist"
END_MARKER="# End of proxies-domain-blacklist"

# Use sed to remove the blocklist entries including markers
sed -i "/$START_MARKER/,/$END_MARKER/d" $HOSTS_FILE

echo "Proxy domain entries have been removed from /etc/hosts."
