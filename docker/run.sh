#!/bin/bash
#
## Startup script can either set the port from first argument or environment variable
#

PORT=$1

if [ -z "$PORT" ]
then
  PORT=$EXT_PORT
  echo "Port not set -> Using default";
fi

echo "Running application on port ($PORT)";
java -jar -Dserver.port="$PORT" happy-stars.jar