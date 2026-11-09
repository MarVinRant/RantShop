# Backlog M0–M7

## Primeira rodada M1 — tarefas independentes

| ID | Frente | Responsável | Estado | Entrega | Critérios de aceite |
|---|---|---|---|---|---|
| M1-A | Produtos e Fornecedores | Agente 01 | IN_REVIEW | Matriz de homologação para fornecedores e 10 produtos | Evidências verificáveis de fornecedor, custo, frete, estoque, prazo, margem e complementares; dados ausentes ficam pendentes |
| M1-B | Design e UX | Agente 03 | IN_REVIEW | Referências e plano da primeira prévia fotográfica | Identidade verde/branco/bege, direitos das imagens registrados e plano desktop/mobile antes da aprovação visual |
| M1-C | Marketing Orgânico | Agente 05 | IN_REVIEW | Posicionamento, calendário inicial e formatos de conteúdo | Conteúdo orgânico sem anúncios pagos, links rastreáveis planejados e nenhuma oferta definitiva sem catálogo homologado |

Essas frentes não iniciam a construção integral da Shopify antes do contrato de dados do catálogo e das dependências M1.

Estado operacional: M1-A, M1-B e M1-C estão `IN_PROGRESS`, com áreas de escrita isoladas. O Orquestrador fará a revisão e integração dos resultados.

Rodada seguinte: M4-01-DRAFT, M3-01-SCAFFOLD e M6-QA-REVIEW foram executadas em áreas isoladas e estão `IN_REVIEW`.

| ID | Prioridade | Tarefa | Responsável | Dependência | Aceite |
|---|---|---|---|---|---|
| M0-01 | P0 | Manter registros e estrutura central | Orquestrador | — | Documentos e pastas presentes |
| M0-02 | P0 | Definir contratos de dados e revisão | Orquestrador + QA | M0-01 | Critérios rastreáveis |
| M1-01 | P0 | Pesquisar fornecedores nacionais | Produtos | M0 | Evidências comparáveis |
| M1-02 | P0 | Selecionar e precificar 10 produtos | Produtos + QA | M1-01 | Margem, estoque e prazo validados |
| M1-03 | P0 | Revisar candidatos e solicitar cotações sem compra | Produtos + QA | M1-01 | Dez fichas com evidência datada ou pendência explícita |
| M1-04 | P0 | Preparar fichas de cotação e roteiro de contato | Orquestrador + Produtos | M1-03 | Modelo sem compromisso criado; envio depende de canal e autorização operacional |
| M2-02 | P1 | Produzir prévia fotográfica demonstrável | Design e UX + Shopify | M2-01, superfície visual | Capturas reais desktop/mobile sem produto fictício |
| M5-02 | P1 | Revisar calendário e links rastreáveis | Marketing + Orquestrador | M1, M1-C | Rascunhos prontos, sem publicação real |
| M2-01 | P1 | Montar prévia fotográfica consolidada | Design e UX + Shopify | M0 | Capturas desktop/mobile |
| M3-01 | P0 | Construir tema e navegação | Shopify | M1, M2 | Loja demonstrável e responsiva |
| M4-01 | P1 | Implementar Combina e recomendações | IA e Automações | M1, M3 | Regras usam catálogo único |
| M5-01 | P1 | Preparar calendário e Telegram supervisionado | Marketing Orgânico | M1, M3 | Conteúdo rastreável e revisável |
| M6-01 | P0 | Executar homologação e corrigir falhas | QA e Operações | M3–M5 | Zero falhas críticas |
| M7-01 | P0 | Consolidar entrega e pedir autorização | Orquestrador | M6 | Decisão apta/não apta documentada |

| M4-01-DRAFT | P1 | Documentar regras determinísticas do Combina | IA e Automações | Contrato do catálogo | Fallback seguro e nenhum produto sem validação |
| M3-01-SCAFFOLD | P1 | Preparar esqueleto reversível de tema | Shopify | Direção visual e contrato | JSON válido, placeholders identificados e sem checkout |
| M6-QA-REVIEW | P0 | Revisar catálogo, design e marketing | QA e Operações | Artefatos M1 | Relatório com evidências, severidades e bloqueios |

## Relatórios

Cada responsável atualiza evidências, estado (`a fazer`, `em andamento`, `bloqueado`, `concluído`) e próximo passo. O Orquestrador integra mudanças e registra conflitos; QA revisa alterações de preço, frete, checkout, segurança e dados pessoais.
