#!/bin/bash


AUTH=$COINCAP_API_KEY
COMPRESS="Accept-Encoding: gzip"
URL='api.coincap.io/v2/assets'
LOC="./coin_data"

while [ 1 ];
do
  DATE=$(TZ=America/Chicago date +"%Y-%m-%d-%T")
  echo $DATE
  curl --location -g -H "$AUTH" -H "$COMPRESS" --request GET $URL > $LOC/$DATE.gz
  echo ""
  sleep 20
done

