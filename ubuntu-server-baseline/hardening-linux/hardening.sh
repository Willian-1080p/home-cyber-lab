#!/bin/bash
set -e

echo "[+] Desabilitando serviços desnecessários"
systemctl disable avahi-daemon || true
systemctl disable cups || true

echo "[+] SSH Hardening"
cp sshd_config.hardened /etc/ssh/sshd_config
systemctl restart ssh

echo "[+] Instalando Fail2Ban"
apt install -y fail2ban
systemctl enable fail2ban

