#!/bin/bash
email="your@mail.com"
log="/var/log/bl.txt"

echo "mx1.nicolas-simond.ch"  > "$log"
bl mx1.nicolas-simond.ch | grep "blacklisted" >> "$log"
echo "mx2.nicolas-simond.ch" >> "$log"
bl mx2.nicolas-simond.ch | grep "blacklisted" >> "$log"
echo "mx3.nicolas-simond.ch" >> "$log"
bl mx3.nicolas-simond.ch | grep "blacklisted" >> "$log"

mail -s "Blacklist report" "$email" < "$log"

rm "$log"
