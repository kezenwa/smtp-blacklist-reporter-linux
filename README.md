SMTP Blacklist Reporting tool for linux
=======================================

## About this script
This script is provided with an example configuration.
You should only replace two things:

- The FQDN of the email servers you want to test
- The email that will receive the report.

## Dependencies
This script is based on: Blacklist check UNIX/Linux utility

Thanks to https://github.com/adionditsak/blacklist-check-unix-linux-utility/blob/master/README.md

## Tested on
Proxmox Mail Gateway 5.2 (Debian 9)

## Installation

Dependencies:

```bash
git clone https://github.com/adionditsak/blacklist-check-unix-linux-utility.git
cd blacklist-check-unix-linux-utility
chmod +x ./bl
mv ./bl /usr/bin
```

Script:

```bash
cd /root/
wget https://raw.githubusercontent.com/stylersnico/smtp-blacklist-reporter-linux/master/blacklist.sh
chmod +x blacklist.sh
```

## Automatic run

Add this to your crontab to get a report every 12 hours

```bash
0 */12 * * * /root/blacklist.sh
```

## Sample report

```bash
mx1.nicolas-simond.ch
mx2.nicolas-simond.ch
19-04-09_Apr:04:1554804047_+0200 217.126.203.116.bl.nszones.com.        [blacklisted] (127.0.0.3)
19-04-09_Apr:04:1554804057_+0200 217.126.203.116.dnsbl.justspam.org.    [blacklisted] (127.0.0.2)
19-04-09_Apr:04:1554804057_+0200 217.126.203.116.dnsbl.spfbl.net.       [blacklisted] (127.0.0.4)
19-04-09_Apr:04:1554804058_+0200 217.126.203.116.dyn.nszones.com.       [blacklisted] (127.0.0.3)
19-04-09_Apr:04:1554804064_+0200 217.126.203.116.spam.dnsbl.sorbs.net.  [blacklisted] (127.0.0.6)
mx3.nicolas-simond.ch
19-04-09_Apr:04:1554804080_+0200 69.167.216.95.dnsbl.spfbl.net.         [blacklisted] (127.0.0.4)
```
