#!/bin/bash

# Define variables
URL="https://raw.githubusercontent.com/xvertile/proxies-domain-blacklist/main/domains.txt"
HOSTS_FILE="/etc/hosts"
TEMP_FILE="/tmp/domains_temp.txt"
START_MARKER="# Start of proxies-domain-blacklist"
END_MARKER="# End of proxies-domain-blacklist"

# Fetch the domain list and prepend with 0.0.0.0
curl -s $URL | sed 's/^/0.0.0.0 /' > $TEMP_FILE

# Remove old entries
sed -i "/$START_MARKER/,/$END_MARKER/d" $HOSTS_FILE

# Append new entries
echo $START_MARKER >> $HOSTS_FILE
cat $TEMP_FILE >> $HOSTS_FILE
echo $END_MARKER >> $HOSTS_FILE

# Clean up
rm $TEMP_FILE

echo "Proxy domains have been updated in /etc/hosts."
