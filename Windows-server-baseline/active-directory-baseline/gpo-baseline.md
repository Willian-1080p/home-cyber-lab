
# Active Directory GPO Security Baseline – WillSecLab

## 🔐 Account Policies
- Minimum password length: 14
- Password history: 24
- Max password age: 60 days
- Account lockout threshold: 5 attempts

➡️ Mitiga brute force e credential stuffing

---

## 🛡️ Security Options
- Disable LM hash storage
- Network access: Do not allow anonymous enumeration
- UAC enabled for administrators

➡️ Mitiga ataques legacy e enumeração

---

## 🔑 Kerberos
- Max ticket lifetime: 10h
- Enforce user logon restrictions
- AES encryption only

➡️ Reduz ataques Kerberoasting

---

## 🔥 Windows Firewall (via GPO)
- Default inbound: Block
- Default outbound: Allow
- Logs enabled

➡️ Reduz superfície de ataque lateral

---

## 📜 Audit Policy
- Logon/Logoff: Success/Failure
- Account Management
- Privilege Use
- Policy Change

➡️ Visibilidade de ataque
