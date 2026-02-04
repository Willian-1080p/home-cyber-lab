#!/bin/bash
echo "[+] Falhas de login:"
grep "Failed password" /var/log/auth.log | tail

