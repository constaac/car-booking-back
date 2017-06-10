#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/cars"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Authorization: Token token=BAhJIiU1NDUwZGJmOGQyODA0ZWM5MzQ4Yzc0ZjkwZTg1MmJkNgY6BkVG--8dd97627174616d369265dc52d397716588644f3"\
  --header "Content-Type: application/json" \
  --data '{
    "car": {
      "model": "mercury",
      "color": "black",
      "lcp": "up80",
      "repair": "repair"
    }
  }'

echo
