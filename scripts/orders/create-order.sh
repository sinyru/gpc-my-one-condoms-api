#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/customer_orders"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "customer_order": {
      "order_id": 123456779
      "customer": "Zhu Chen",
      "cost": 7.50,
      "repeat_customer": true,
      "date_created": "2017-02-08"
    }
  }'

echo
