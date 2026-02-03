
---

# 🔧 `hardening.sh` — Script de Automação

```bash
#!/bin/bash
#
# Script: hardening.sh
# Projeto: Ubuntu Server Hardening Baseline – WillSecLab
# Objetivo: Aplicar configurações básicas de hardening de forma automatizada
#
# Atenção:
# - Execute como root
# - Teste antes em ambiente de laboratório

set -e

echo "[+] Atualizando o sistema"
apt update && apt upgrade -y

echo "[+] Instalando pacotes essenciais"
apt install -y ufw

echo "[+] Configurando firewall (UFW)"
ufw default deny incoming
ufw default allow outgoing
ufw allow ssh
ufw --force enable

echo "[+] Endurecendo configuração do SSH"
SSH_CONFIG="/etc/ssh/sshd_config"

sed -i 's/^#\?PermitRootLogin.*/PermitRootLogin no/' $SSH_CONFIG
sed -i 's/^#\?PasswordAuthentication.*/PasswordAuthentication no/' $SSH_CONFIG
sed -i 's/^#\?X11Forwarding.*/X11Forwarding no/' $SSH_CONFIG

systemctl restart ssh

echo "[+] Aplicando hardening de kernel (sysctl)"
cp sysctl.conf /etc/sysctl.d/99-hardening.conf
sysctl -p /etc/sysctl.d/99-hardening.conf

echo "[✓] Hardening básico concluído com sucesso"
