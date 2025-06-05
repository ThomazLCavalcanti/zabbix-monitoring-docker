# Configuração de Alertas no Zabbix

Este documento descreve como configurar notificações automáticas (alertas) no Zabbix para incidentes como queda de hosts, uso excessivo de CPU, disco cheio, entre outros.

---

## 📧 1. Configurar o Método de Mídia (Ex: Email)

1. Acesse: **Administration → Media types**
2. Clique em **Email**
3. Configure os parâmetros:
   - SMTP server: ex: `smtp.gmail.com`
   - SMTP helo: ex: `zabbix.local`
   - SMTP email: ex: `alertas@seudominio.com`
   - Authentication: Ative se necessário
   - Username/Senha: da conta de envio

---

## 👤 2. Associar Mídia ao Usuário

1. Vá em: **Administration → Users**
2. Escolha um usuário ou crie um novo (ex: `Responsável TI`)
3. Clique em **Media → Add**
4. Selecione:
   - **Type**: Email
   - **Send to**: Endereço de e-mail (ex: `ti@empresa.com`)
   - **When active**: Tempo em que o alerta será enviado (ex: 24x7)

---

## ⚙️ 3. Criar uma Ação de Alerta

1. Vá em: **Configuration → Actions → Trigger actions**
2. Clique em **Create action**
3. Configure:
   - **Name**: ex: "Alerta de host inativo"
   - **Conditions**: 
     - `Trigger value = PROBLEM`
     - `Host group = Linux Servers` (ou outro grupo)
4. Em **Operations**:
   - **Send message to users**: Escolha os usuários com mídia configurada
   - **Default message**: Editável
5. Salve a ação

---

## 🔔 4. Testar Alerta

- Simule um problema (ex: desligue o agente Zabbix em um host)
- Verifique se a notificação é disparada
- Veja o histórico em **Monitoring → Problems**

---

## ✅ Exemplo de Alerta

- Nome: `Servidor inativo`
- Condição: `Trigger = PROBLEM + Host group = Servidores Linux`
- Ação: Enviar e-mail ao time de TI

---

