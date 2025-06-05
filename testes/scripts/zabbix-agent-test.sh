#!/bin/bash

# Script de teste para verificar a comunicação entre o host e o Zabbix Agent
# Ideal para confirmar se o agente está ativo e se a porta está aberta

AGENT_HOST="127.0.0.1"
AGENT_PORT=10050

echo "🔍 Testando conexão com o Zabbix Agent em $AGENT_HOST:$AGENT_PORT..."

if nc -zv "$AGENT_HOST" "$AGENT_PORT"; then
    echo "✅ Conexão com o agente Zabbix estabelecida com sucesso!"
else
    echo "❌ Falha na conexão com o agente Zabbix. Verifique se o serviço está ativo."
fi

echo "📡 Testando resposta do agente com zabbix_get..."

# Exemplo de coleta de dados usando zabbix_get
zabbix_get -s "$AGENT_HOST" -k "system.uptime"

if [ $? -eq 0 ]; then
    echo "✅ Resposta recebida do agente com sucesso."
else
    echo "❌ Não foi possível obter resposta via zabbix_get. Verifique permissões e configuração."
fi
