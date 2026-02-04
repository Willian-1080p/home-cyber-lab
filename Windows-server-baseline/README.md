# 🔐 Windows Hardening Baseline – WillSecLab

## 📌 Descrição
Este projeto aplica um baseline de hardening em sistemas Windows, focado na redução da superfície de ataque, controle de acesso e fortalecimento das configurações de segurança nativas.

Faz parte do laboratório **WillSecLab**, voltado ao aprendizado prático e ético em Segurança da Informação.

---

## 🎯 Objetivo
- Automatizar configurações básicas de segurança no Windows
- Padronizar hardening inicial de estações e servidores
- Facilitar auditorias e revisões de segurança

---

## 🧠 Conceitos de Segurança Aplicados
- Princípio do menor privilégio
- Hardening de sistema operacional
- Defense in Depth
- Segurança por padrão
- Auditoria e conformidade

---

## 🛠️ Tecnologias Utilizadas
- Windows Server / Windows 10+
- PowerShell
- Windows Defender
- Windows Firewall
- Políticas Locais de Segurança

---

## ⚙️ Como Utilizar
> ⚠️ Execute **como Administrador**.

```powershell
Set-ExecutionPolicy Bypass -Scope Process
.\hardening.ps1

