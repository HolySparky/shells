#!/bin/bash
echo "get State:/Network/Service/com.cisco.anyconnect/DNS
d.add ServerAddresses * 8.8.8.8
set State:/Network/Service/com.cisco.anyconnect/DNS" | sudo scutil
