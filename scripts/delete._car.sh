
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/cars"
curl "${API}${URL_PATH}/3" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiU5ZDAwMjFkNjdiNWEwZDllYzJkZGUyYzlhZWExN2I5YgY6BkVG--f06c7dd93e5bcb28b301c7c750a2a12bf20d54af"
