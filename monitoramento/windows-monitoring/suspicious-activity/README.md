# 👁️ Suspicious Activity Detection – Windows

## 📌 Descrição
Script para detecção de atividades potencialmente maliciosas através da análise de eventos críticos do Windows.

---

## 🔍 Eventos Monitorados
- 4688 – Criação de processo
- 4672 – Privilégios administrativos atribuídos

---

## 🎯 Objetivo
Detectar:
- Execução de ferramentas administrativas fora do padrão
- Possível movimento lateral
- Elevação suspeita de privilégios

---

## ⚙️ Uso
```powershell
.\suspicious-activity.ps1

