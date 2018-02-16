#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/reports"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "report": {
      "revenue": 123.40,
      "dates": "2018-01-06",
      "repeat_customers": 10,
      "total_visits": 452
    }
  }'

echo
