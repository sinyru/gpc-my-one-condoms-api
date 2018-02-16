#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/input_dates"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "input_date": {
      "start_date": "2017-12-31"
    }
  }'

echo
