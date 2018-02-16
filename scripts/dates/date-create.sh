#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/input_dates"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "input_date": {
      "start_date": "2017-12-31"
    }
  }'

echo
