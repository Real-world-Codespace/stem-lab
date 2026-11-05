#!/bin/sh
set -eu

export NODE_ENV="${NODE_ENV:-production}"
export HOSTNAME="${HOSTNAME:-0.0.0.0}"
export PORT="${PORT:-3001}"

if [ "$#" -eq 0 ]; then
  set -- node server.js
fi

exec "$@"
