# Ethical Proxy Guard

## Introduction
This repository is designed for network administrators and service providers aiming to prevent abusive or unwanted connections through their proxies. By implementing a robust domain blacklisting system, you can ensure that your proxy services are used with the best intentions, fostering a safer and more responsible online environment. This approach not only enhances the security of your network but also upholds a high standard of ethical usage, preventing access to harmful or undesirable content.

## How to Use
This project offers an easy way to apply and revert domain blacklisting on your system. Using the provided scripts, you can quickly update your system's `/etc/hosts` file to block or unblock the specified domains.

### Applying the Blacklist
To apply the blacklist to your system, run the following command:
```bash
curl -s https://raw.githubusercontent.com/xvertile/Ethical-Proxy-Guard/main/update-hosts.sh | sudo bash
```
This command downloads and executes the `update-hosts.sh` script, which automatically appends the blacklist entries to your `/etc/hosts` file, effectively blocking the listed domains.

### Reverting the Changes
If you wish to revert the changes and remove the blacklist entries from your `/etc/hosts` file, execute the following command:
```bash
curl -s https://raw.githubusercontent.com/xvertile/Ethical-Proxy-Guard/main/remove-hosts.sh | sudo bash
```
This command downloads and runs the `remove-hosts.sh` script, which removes the previously added blacklist entries, restoring access to those domains.

## Conclusion
Adopting a proactive approach to domain blacklisting is crucial for maintaining the integrity and ethical use of proxy services. Our scripts make it easier to manage such blacklists, ensuring a secure and responsible network environment.

## Credits
The domains used in this repo are from DataImpulse website. You can find the original list [here](https://docs.google.com/spreadsheets/d/18RwU3srsbO2PzQxrPxjN2cVLkrV6ZKrdRERlz3k2MKU/edit?usp=sharing).
