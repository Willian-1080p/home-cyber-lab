# 🔐 Ubuntu Server Advanced Hardening – WillSecLab

## 📌 Descrição
Este projeto implementa um **hardening avançado para servidores Ubuntu**, indo além do baseline inicial e aplicando controles de segurança utilizados em ambientes corporativos.

O objetivo é reduzir a superfície de ataque, fortalecer o controle de acesso, melhorar a auditoria e preparar o sistema para monitoramento e resposta a incidentes.

Este projeto faz parte do laboratório **WillSecLab**, voltado ao aprendizado prático, ético e documentado em Segurança da Informação.

---

## 🎯 Objetivos
- Aplicar hardening avançado em servidores Ubuntu
- Reduzir riscos de comprometimento
- Separar **auditoria** e **aplicação de controles**
- Facilitar validação, rollback e compliance
- Servir como base para integração com IDS/SIEM

---

## 🧠 Conceitos de Segurança Aplicados
- Defense in Depth
- Princípio do menor privilégio
- Secure by Default
- Redução da superfície de ataque
- Auditoria e rastreabilidade
- Monitoramento preventivo

---

## 🛠️ Tecnologias Utilizadas
- Ubuntu Server 20.04+
- Bash
- OpenSSH
- Fail2Ban
- UFW / iptables
- Sysctl
- systemd

---

## 🧪 Cenário de Teste
- Servidor Ubuntu em máquina virtual
- Ambiente isolado (laboratório)
- Acesso administrativo controlado
- Sem exposição externa durante os testes

---

## 📁 Estrutura do Projeto

---

ubuntu-server-advanced/
├── hardening.sh
├── audit-only.sh
├── sshd_config.hardened
├── sysctl.conf
├── checklist.md
├── SECURITY.md
└── README.md

---

## ⚙️ Modos de Execução

### 🔍 Auditoria (recomendado)
Executa verificações **sem alterar o sistema**.

```bash
chmod +x audit-only.sh
./audit-only.sh

📌 Executar auditoria antes evita impacto operacional e permite análise do ambiente.

---

🔧 Aplicação de Hardening

⚠️ Execute apenas em ambientes autorizados.

chmod +x hardening.sh
sudo ./hardening.sh
