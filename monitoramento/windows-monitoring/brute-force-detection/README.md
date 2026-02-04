# 🚨 Brute Force Detection – Windows

## 📌 Descrição
Script PowerShell para detecção de tentativas de força bruta baseadas em eventos de falha de logon (Event ID 4625).

---

## 🔍 Lógica
- Analisa o log de segurança
- Agrupa falhas por IP
- Dispara alerta ao atingir limiar

---

## ⚙️ Uso
Execute como Administrador:

```powershell
.\brute-force.ps1

