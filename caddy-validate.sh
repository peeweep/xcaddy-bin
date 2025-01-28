#!/bin/bash

Caddyfiles=$(find . | grep Caddyfile)
for Caddyfile in ${Caddyfiles}; do
  ./bin/caddy-$(uname -m) validate --config $Caddyfile
  status_code=$?
  if [[ $status_code != "0" ]]; then
    exit 1
  fi
done
