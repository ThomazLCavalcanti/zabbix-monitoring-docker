# Uso de Templates no Zabbix

Templates no Zabbix são conjuntos pré-configurados de itens, triggers, gráficos e aplicações. Eles facilitam a padronização e agilidade na configuração do monitoramento de hosts.

---

## 📦 1. Templates Oficiais do Zabbix

Zabbix já inclui vários templates prontos, como:

- `Template OS Linux`
- `Template OS Windows`
- `Template ICMP Ping`
- `Template App MySQL`
- `Template App Apache`

Esses templates incluem monitoramento de CPU, RAM, disco, processos, tempo de atividade, e muito mais.

---

## ➕ 2. Importando um Template Externo

1. Acesse: **Configuration → Templates**
2. Clique em **Import**
3. Selecione o arquivo `.xml` do template
4. Marque todas as opções de importação
5. Clique em **Import**

Você pode encontrar templates na [Zabbix Share](https://share.zabbix.com/).

---

## 🖇️ 3. Associando Template a um Host

1. Vá em **Configuration → Hosts**
2. Clique no host desejado
3. Aba **Templates → Link new templates**
4. Selecione um ou mais templates (ex: `Template OS Linux`)
5. Clique em **Add** e depois em **Update**

---

## ✅ 4. Verificando Itens Criados

Após aplicar o template:

1. Vá em **Monitoring → Latest data**
2. Selecione o host
3. Os itens de monitoramento estarão automaticamente criados, de acordo com o template

---

## 🧩 5. Criando um Template Personalizado (Opcional)

1. Vá em **Configuration → Templates → Create template**
2. Dê um nome, ex: `Template Servidor Web`
3. Associe:
   - Itens: ex: uso de porta 80, processos do Apache
   - Triggers: ex: Apache parado
   - Gráficos personalizados
4. Após criar, associe a um host como mostrado acima

---

## 📝 Exemplo de Templates Utilizados

| Host                 | Template Aplicado        |
|----------------------|---------------------------|
| `linux-web-01`       | Template OS Linux         |
| `windows-dc-01`      | Template OS Windows       |
| `mysql-db-01`        | Template App MySQL        |
| `router-core`        | Template ICMP Ping        |

---

