#!/bin/bash
for server in server1 server2 server3; do
    echo "Checking $server..."
    ping -c 1 $server >/dev/null 2>&1

    if [ $? -eq 0 ]; then
        echo "$server is reachable ✅"
    else
        echo "$server is not reachable ❌"
    fi
done
