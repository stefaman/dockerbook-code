#!/bin/bash

curl -i -H "Accept: application/json" \
-d "name=stefaman&sex=male" \
localhost:4567/json

curl -i localhost:4567/json