#!/bin/bash

API="http://localhost:4741/blogposts/"
POST_ID="5d16225b4ae421e896d61cc6"
TOKEN="238957524750d700626f28b274250ffb"
COMMENT="stuff"

curl "${API}${URL_PATH}${POST_ID}/comments" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer ${TOKEN}" \
  --data '{
    "comment": "'"${COMMENT}"'"
  }'

echo
