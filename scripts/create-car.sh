#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/cars"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Authorization: Token token=BAhJIiVjMTY3ODA0OWUyNzhjYjA3MTRiZmExZDkzM2IyNmI4MAY6BkVG--17071c487fb4fe9d548ab5dd14026c7693eebb09"\
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
