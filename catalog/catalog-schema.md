# Contrato mínimo do catálogo

Um produto só pode mudar de `candidate` para `validated` quando todos os campos obrigatórios tiverem evidência datada ou forem explicitamente aprovados pelo responsável comercial.

```yaml
id: lower-case-stable-key
status: candidate # candidate | pending_validation | validated | rejected
name: null
category: casa|cozinha|organizacao|decoracao
environment: []
style: []
palette: [verde, branco, bege]
complements: []
supplier:
  legal_name: null
  cnpj: null
  source_url: null
  evidence_date: null
sku: null
commercial:
  supplier_cost_brl: null
  suggested_retail_brl: null
  stock_status: pendente_de_validacao
  dispatch_days: null
  delivery_estimate: null
  freight_test: null
  payment_terms: null
  return_policy: null
  evidence_reference: null
operations:
  dimensions_cm: null
  weight_kg: null
  shipping_origin: null
  packaging: null
  damage_risk: null
margin:
  contribution_brl: null
  assumptions: null
  status: pending_validation
```

Nunca preencher `commercial` ou `margin` com estimativas apresentadas como fato. Fórmula: preço − custo − frete subsidiado − tarifas − tributos − demais custos variáveis.
