#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/orders"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "order": {
      "customer": "Zhu Chen",
      "cost": 7.50,
      "repeat_customer": true,
      "line_items": "6-pack"
    }
  }'

echo
