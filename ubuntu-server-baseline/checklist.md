# Checklist de Hardening – Ubuntu Server

## 🖥️ Sistema
- [ ] Sistema atualizado
- [ ] Repositórios confiáveis configurados
- [ ] Serviços desnecessários removidos

## 👤 Usuários e Acesso
- [ ] Login direto como root desabilitado
- [ ] Usuários sem necessidade removidos
- [ ] Uso de chaves SSH

## 🔑 SSH
- [ ] PermitRootLogin no
- [ ] PasswordAuthentication no
- [ ] X11Forwarding no
- [ ] Serviço SSH ativo e funcional

## 🔥 Firewall
- [ ] Política padrão DROP para entrada
- [ ] Apenas portas necessárias liberadas
- [ ] UFW ativo no boot

## 🧱 Kernel (sysctl)
- [ ] IP forwarding desabilitado
- [ ] Redirects ICMP desabilitados
- [ ] Source routing desabilitado

## 📜 Logs
- [ ] Logs de autenticação ativos
- [ ] Tentativas de login monitoradas

