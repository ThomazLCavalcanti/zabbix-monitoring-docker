# Configuração de Hosts no Zabbix

Este guia explica como adicionar e configurar hosts no Zabbix a partir da interface web.

---

## 🖥️ 1. Acessar a Interface do Zabbix

1. Acesse `http://localhost:8080` (ou o IP do servidor com Zabbix).
2. Faça login com:
   - Usuário: `Admin`
   - Senha: `zabbix`

---

## ➕ 2. Adicionar um Novo Host

1. Navegue até: **Configuration → Hosts**.
2. Clique em **Create host**.
3. Preencha os campos:
   - **Hostname**: Nome do host (ex: `ServidorLinux01`)
   - **Visible name** (opcional): Nome amigável
   - **Groups**: Adicione a um grupo existente ou crie um novo (ex: `Linux servers`)
   - **Interfaces**: 
     - Tipo: `Agent`
     - IP: IP do host (ex: `192.168.1.10`)
     - Port: `10050` (padrão do agente Zabbix)
4. Clique em **Templates** e adicione um ou mais:
   - Ex: `Linux by Zabbix agent`, `Template OS Linux`, etc.

---

## 🧪 3. Verificar Comunicação

Após salvar:

1. Volte à tela de hosts.
2. Verifique a coluna **Availability** (disponibilidade):
   - ✅ Verde: Comunicação bem-sucedida
   - ❌ Vermelho: Host inativo ou erro de configuração

---

## 🛠️ 4. Considerações

- Certifique-se de que o agente Zabbix esteja instalado e ativo no host monitorado.
- Libere a porta 10050/tcp no firewall do host.
- Para hosts com sistemas Windows, use o template `Windows by Zabbix agent`.

---

## 📦 Exemplo de Host Linux Monitorado

- **Hostname**: `app-server-01`
- **IP**: `172.20.0.5`
- **Template**: `Linux by Zabbix agent`
- **Grupo**: `Servidores de Aplicação`

---
