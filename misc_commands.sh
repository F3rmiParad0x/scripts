#!/usr/bin/env bash

# Find the OrgName that is hosting a domain. 
whois $(host -t a www.domain.com | grep -Eo '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | head -1) | grep -i 'OrgName'
