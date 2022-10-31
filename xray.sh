#!/bin/sh
if [ ! -f UUID ]; then
  UUID="ebcaf52a-12c1-45c7-9551-eea2302a2034"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

