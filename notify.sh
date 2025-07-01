#!/bin/sh

echo "Sending payload to https://postman-echo.com/post..."

curl -X POST https://postman-echo.com/post \
  -H "Content-Type: application/json" \
  -d "{
    \"timestamp\": \"$(date -u +"%Y-%m-%dT%H:%M:%SZ")\",
    \"deployment\": \"v1.0.0\",
    \"custom_variable\": \"devops-challenge\"
  }"
