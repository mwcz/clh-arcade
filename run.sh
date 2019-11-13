#!/usr/bin/env bash
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

CORSPROXY_MAX_PAYLOAD=40485760 CORSPROXY_HOST=127.0.0.1 CORSPROXY_PORT=1234 $SCRIPTPATH/../lib/node_modules/clh-arcade/node_modules/.bin/corsproxy &
$SCRIPTPATH/../lib/node_modules/clh-arcade/node_modules/.bin/http-server -p 8765 $SCRIPTPATH &
$SCRIPTPATH/../lib/node_modules/clh-arcade/node_modules/.bin/http-server -p 8766 ./
