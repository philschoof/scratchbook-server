#!/bin/bash

curl --include --request POST http://localhost:3000/albums/ \
  --header "Content-Type: application/json" \
  --data '{
    "album": {
      "title": "Street Halo",
      "artist": "Burial"
    }
  }'
