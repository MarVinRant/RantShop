# RantiShop Combina — Regras demonstrativas

> **M4-01-DRAFT | IA e Automações**  
> Artefato demonstrativo, sem conexão externa e sem publicação. Os itens em
> `catalog/candidate-products.md` permanecem candidatos; nenhuma regra abaixo
> transforma um candidato em produto validado.

## Entradas aceitas

- `environment`: `cozinha`, `organizacao`, `banheiro`, `sala` ou `quarto`.
- `palette`: `verde`, `branco`, `bege` ou `branco_quente`.
- `style`: entrada opcional (`minimalista`, `natural`, `contemporaneo` etc.).
  O catálogo atual não fornece estilos por candidato, portanto não altera o
  resultado até existir um atributo documentado.
- `validated_product_ids`: conjunto explicitamente fornecido pelo catálogo
  homologado. Na situação atual, este conjunto é vazio.

Entradas desconhecidas são normalizadas para ausência. A recomendação nunca
usa preço, estoque, frete, prazo, margem ou disponibilidade inferidos.

## Regras determinísticas

1. Filtrar os candidatos cujo `environment` contenha o ambiente informado.
2. Entre os filtrados, priorizar os que contenham a paleta informada. Para
   `branco_quente`, tratar somente como correspondência explícita de C-09;
   não convertê-la automaticamente em `branco`.
3. Ordenar por ordem fixa de ID (`C-01` a `C-10`) para desempate estável.
4. Só retornar um item quando seu ID estiver em `validated_product_ids`.
5. Para cada item retornado, sugerir apenas os IDs listados em seu campo
   `complements`, também limitados a `validated_product_ids`.
6. Se não houver resultado validado, retornar `status: fallback_pending_validation`
   e nenhum produto comprável.

## Mapeamento demonstrativo de atributos

| ID | Ambiente | Paletas | Complementar |
|---|---|---|---|
| C-01 | cozinha | branco, bege | C-02 |
| C-02 | cozinha | branco, verde | C-01 |
| C-03 | cozinha | branco, verde | C-01 |
| C-04 | organizacao | bege | C-05 |
| C-05 | banheiro | branco, bege | C-04 |
| C-06 | sala, quarto | bege, verde | C-07 |
| C-07 | sala | verde, bege | C-06 |
| C-08 | sala, quarto | verde, bege | C-06 |
| C-09 | sala, quarto | branco_quente | C-08 |
| C-10 | cozinha, banheiro | branco | C-04 |

## Exemplos demonstrativos

Os exemplos abaixo são previsões de saída da regra, não ofertas nem prova de
estoque, preço ou disponibilidade.

```yaml
- input: {environment: cozinha, palette: branco, style: minimalista}
  validated_product_ids: []
  output: {status: fallback_pending_validation, product_ids: [], complement_ids: []}

- input: {environment: sala, palette: verde, style: natural}
  validated_product_ids: [C-06, C-07, C-08]
  output: {status: recommended, product_ids: [C-06, C-07, C-08], complement_ids: [C-06, C-07]}

- input: {environment: quarto, palette: branco_quente, style: null}
  validated_product_ids: [C-09]
  output: {status: recommended, product_ids: [C-09], complement_ids: []}
```

O segundo e o terceiro exemplos usam IDs validados apenas como entrada de
teste; isso não afirma que estejam homologados no catálogo atual.

## Riscos e pendências

- Todos os candidatos precisam de validação comercial antes de uso em loja.
- `style` ainda não possui valores por produto e está deliberadamente sem
  efeito.
- A regra não resolve conflitos de múltiplas paletas nem substitui revisão UX.
- Integrações, mensagens, IA paga, n8n, Telegram e WhatsApp permanecem fora
  deste rascunho.
