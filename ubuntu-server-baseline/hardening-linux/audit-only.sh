#!/bin/bash

echo "[AUDIT] Serviços ativos:"
systemctl list-units --type=service --state=running

echo "[AUDIT] Portas abertas:"
ss -tulnp

echo "[AUDIT] Usuários com shell:"
awk -F: '$7 ~ /bash/' /etc/passwd

