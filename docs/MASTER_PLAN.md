# RantiShop — Plano Mestre do MVP

## Objetivo

Preparar e homologar um MVP comercial de e-commerce Shopify para casa, cozinha, organização e decoração, em modelo de dropshipping nacional, com marketing orgânico e reserva máxima de R$ 200.

## Escopo do MVP

- Loja responsiva em tema gratuito, com quatro coleções e 10 produtos reais.
- Catálogo único com fornecedor, custo, preço, margem, estoque, prazo, variantes, dimensões, cor, paleta, ambiente, estilo e complementos.
- Carrinho, frete, checkout e políticas preparados para testes; nenhuma venda real nesta fase.
- RantiShop Combina básico por questionário de ambiente, estilo e paleta.
- Recomendações por regras e atributos reais do catálogo.
- Ranti Assistente básica com FAQ e encaminhamento humano.
- Conteúdo orgânico inicial e Ranti Ofertas no Telegram em modo supervisionado.

## Marcos

| Marco | Entrega | Dependências |
|---|---|---|
| M0 | Estrutura, registros, papéis e backlog | Nenhuma |
| M1 | Fornecedor e 10 produtos viáveis | M0 |
| M2 | Prévia fotográfica desktop/mobile aprovada | M0; dados demonstrativos identificados |
| M3 | Tema e navegação integrados | M1, M2 |
| M4 | Combina, recomendações e FAQ | M1, M3 |
| M5 | Conteúdo e Telegram supervisionado | M1, M3 |
| M6 | Homologação operacional | M3–M5 |
| M7 | Entrega para autorização de lançamento | M6 |

## Gates

Nenhuma contratação, publicação, ativação de pagamento ou venda real ocorre sem aprovação humana. M1 exige evidências de fornecedor, custos, prazos, estoque e margem. M2 exige prévias fotográficas consolidadas. M6 exige zero falhas críticas, políticas revisadas, fluxo de pedido testado e capital de giro compatível.

## Equipe e colaboração

O Orquestrador é a sessão principal, guiada por `AGENTS.md` e este plano. As seis frentes especializadas são: Produtos e Fornecedores (`catalog/`), Shopify (`shopify-theme/`), Design e UX (`design/`), IA e Automações (`automation/`), Marketing Orgânico (`marketing/`) e QA e Operações (`tests/`). Cada frente registra arquivos, testes, evidências e bloqueios; mudanças compartilhadas passam por revisão antes da integração. O limite inicial é de três subagentes simultâneos.

O ambiente atual não expõe um CLI `codex` nem uma estrutura TOML de agentes de projeto verificável. A delegação oficial disponível foi validada com subagentes temporários, sem criar configurações incompatíveis ou serviços externos.
