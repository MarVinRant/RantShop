# Testes manuais — RantiShop Combina

> **M4-01-DRAFT** — testes documentais, sem API, sem mensagem enviada e sem
> alteração de status comercial.

| ID | Entrada | IDs validados | Resultado esperado | Resultado observado |
|---|---|---|---|---|
| MT-01 | cozinha + branco | nenhum | `fallback_pending_validation`, lista vazia | Conforme regra: nenhum candidato é retornado |
| MT-02 | sala + verde | C-06, C-07, C-08 | IDs em ordem fixa e complementares apenas dos IDs validados | Conforme regra: C-06, C-07, C-08 |
| MT-03 | quarto + branco_quente | C-09 | C-09; sem complementar não validado | Conforme regra: C-09 |
| MT-04 | banheiro + bege | C-05 | C-05; C-04 não entra sem validação | Conforme regra: C-05 |
| MT-05 | ambiente desconhecido + verde | C-01 | fallback seguro, sem produto | Conforme regra: nenhum ambiente correspondente |
| MT-06 | sala + verde + estilo desconhecido | C-06 | estilo não altera resultado | Conforme regra: filtro por ambiente/paleta |

## Procedimento de revisão

1. Ler o mapa de atributos em `recommendation-rules.md`.
2. Aplicar cada entrada sem consultar preços, estoque ou disponibilidade.
3. Confirmar que todo ID da saída pertence simultaneamente ao mapa e ao
   conjunto `validated_product_ids`.
4. Confirmar que `fallback_pending_validation` não contém links de compra,
   oferta ou promessa comercial.

## Evidência, riscos e pendências

Os seis casos acima foram revisados contra os candidatos existentes e suas
relações de complementares. A evidência é documental e não representa teste
automatizado. A pendência principal é obter validação comercial por SKU antes
de disponibilizar qualquer recomendação em Shopify ou em uma mensagem.
