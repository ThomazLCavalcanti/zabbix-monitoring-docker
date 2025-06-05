
# ✅ Resultados dos Testes - Zabbix Monitoring com Docker

Este documento apresenta os resultados dos testes realizados para validar o funcionamento do ambiente de monitoramento com Zabbix em contêineres Docker.

---

## 🔧 Teste de Conectividade com o Zabbix Agent

**Comando executado:**

```bash
bash testes/scripts/zabbix_agent_test.sh
```

**Resultado:**

```
🔍 Testando conexão com o Zabbix Agent em 127.0.0.1:10050...
Connection to 127.0.0.1 10050 port [tcp/*] succeeded!
✅ Conexão com o agente Zabbix estabelecida com sucesso!
📡 Testando resposta do agente com zabbix_get...
123456
✅ Resposta recebida do agente com sucesso.
```

**Status:** ✅ **Sucesso**

---

## 📈 Monitoramento do Host

- O host foi adicionado no frontend do Zabbix.
- Foi vinculado ao template `Linux by Zabbix agent`.
- Após alguns minutos, os dados de CPU, memória, disco e rede foram exibidos corretamente.

**Status:** ✅ **Coleta de dados funcional**

---

## 🚨 Teste de Alerta

- Criado um trigger para uso de CPU acima de 90%.
- Simulado aumento de carga com `stress`.
- Alerta gerado e exibido corretamente no painel.

**Status:** ✅ **Alertas operacionais**
