# M6-QA-REVIEW — Relatório independente de qualidade

**Escopo:** revisão somente leitura de `catalog/`, `design/` e `marketing/`, conforme `AGENTS.md`, `docs/ACCEPTANCE.md`, `docs/BUDGET.md` e `docs/STATUS.md`.

**Data da revisão:** 2026-11-09  
**Resultado:** `IN_REVIEW` — não há base para homologação comercial.

## Checagens executadas

Comandos utilizados no PowerShell:

```text
rg --files catalog design marketing tests
rg -n "candidate|validated|verified|pending|SKU|sku|cost|price|stock|freight|margin|supplier" catalog
rg -n -i "credential|secret|token|password|api[_ -]?key|BEGIN ... PRIVATE KEY|ghp_|sk-..." catalog design marketing docs
rg -n -i "publish|published|publicad|checkout|payment|pagamento|campaign|campanha|activated|ativad|contrat|spent|gasto" catalog design marketing docs
rg -n -i "R$ 200|intacto|sem gasto|não autorizado" catalog design marketing docs/BUDGET.md docs/STATUS.md
```

## Resultado por critério

| Critério | Evidência observada | Resultado |
|---|---|---|
| Presença e coerência do contrato | `catalog/catalog-schema.md` define `status`, fornecedor, SKU, dados comerciais, logística e margem; `candidate-products.md` contém 10 linhas C-01 a C-10 | PASS |
| Candidato versus validado | Candidatos estão marcados como não homologados; campos comerciais permanecem `pendente de validação`; não foi encontrado item `validated` | PASS |
| Fornecedores verificáveis | Há fontes públicas e matriz de investigação, mas não há cotação/SKU/estoque/frete/prazo/devolução datados por produto | BLOCKED |
| Margens e capital de giro | Fórmula existe no esquema e em `docs/BUDGET.md`, porém não há valores calculados por SKU | BLOCKED |
| Orçamento | Documentos mantêm teto de R$ 200, sem contratação, compromisso ou despesa registrada | PASS |
| Credenciais | Busca por padrões de segredo e credenciais não encontrou correspondências nos escopos revisados | PASS |
| Publicação/comercialização | Os arquivos afirmam que campanhas, checkout, pagamentos e publicação não foram ativados; não há evidência de publicação | PASS |
| Design e marketing | Direção visual, calendário, roteiros e rastreamento estão documentados; materiais dependem de catálogo homologado e prévia visual | PASS WITH BLOCKER |

## Achados por severidade

### Crítico

Nenhum encontrado. Não há credenciais identificáveis, pagamento ativo ou publicação comercial observada.

### Alto

- **QA-M1-001 — catálogo não homologável:** os 10 registros são candidatos e não possuem evidência comercial específica por SKU. Isso impede aprovação de fornecedor, preço, estoque, frete, prazo, devolução e margem.
- **QA-M1-002 — margem não verificável:** não existem custos e receitas confirmados para calcular margem de contribuição ou capital de giro.

### Médio

- **QA-M2-001 — prévia visual pendente:** `design/visual-direction.md` define a direção, mas ainda não há captura completa desktop/mobile para aprovação.
- **QA-M5-001 — conteúdo não publicável:** marketing está planejado, porém ofertas, preços, links reais e mensagens permanecem dependentes do catálogo e de revisão humana.

### Baixo

Nenhum achado adicional no escopo desta revisão.

## Bloqueios e próximo passo

O bloqueio principal é a ausência de evidências datadas de fornecedor e SKU. O próximo passo seguro é solicitar cotações sem compra para os dez candidatos, registrar custo, estoque, frete por CEP de teste, prazo, devolução e condições de pagamento, e só então recalcular margem. A prévia visual deve ser produzida separadamente antes de aprovação do layout.

Nenhum item comercial foi aprovado por este relatório. Nenhum arquivo fora de `tests/` foi alterado.

