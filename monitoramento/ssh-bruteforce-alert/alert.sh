#!/bin/bash

COUNT=$(grep "Failed password" /var/log/auth.log | wc -l)

if [ "$COUNT" -gt 10 ]; then
  echo "[ALERTA] Possível brute force SSH detectado"
fi

