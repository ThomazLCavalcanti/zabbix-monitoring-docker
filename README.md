# Monitoramento com Zabbix em Docker

Este projeto configura uma stack completa do Zabbix usando Docker Compose. Ele permite criar rapidamente um ambiente de monitoramento funcional para servidores e serviços.

---

## 🔧 Requisitos

- Docker
- Docker Compose

---

## 🚀 Subindo o Ambiente

1. **Clone o repositório:**
   ```bash
   git clone https://github.com/ThomazLCavalcanti/zabbix-monitoring-docker.git
   cd zabbix-monitoring-docker
   ```

2. **Configure o arquivo `.env`:**
   Os parâmetros já estão definidos no exemplo. Altere conforme necessário.

3. **Suba os containers:**
   ```bash
   docker-compose up -d
   ```

4. **Acesse o Zabbix Web:**
   - URL: `http://localhost:8080`
   - Usuário: `Admin`
   - Senha: `zabbix`

---

## 🖥️ Configurações

Veja a pasta `configuracoes/` para:

- Adicionar hosts para monitoramento
- Aplicar templates prontos do Zabbix
- Criar alertas personalizados

---

## ✅ Testes

O script `testes/scripts/zabbix_agent_test.sh` permite verificar a comunicação com o agente Zabbix instalado em um host remoto.

Veja `resultados.md` para logs de testes realizados.

---

## 🧩 Imagens

A pasta `imagens/` contém exemplos reais da interface do Zabbix em funcionamento.

---

## 📌 Observações

- Este projeto é ideal para testes e ambientes de estudo.
- Para produção, recomenda-se ajustar volumes persistentes e regras de segurança.

---
