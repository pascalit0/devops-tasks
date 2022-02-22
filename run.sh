#!/bin/bash

PORT=$1

if [ -z "$PORT" ]
then
  PORT=8081
  echo "Port not set -> Using default";
fi

echo "Running application on port ($PORT)";
java -jar -Dserver.port=$PORT happy-stars.jar