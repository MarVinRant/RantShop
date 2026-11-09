# Critérios de Aceite e Homologação

## M0 — Estrutura

- [x] `AGENTS.md` lido e preservado.
- [x] Papéis, responsabilidades, dependências e backlog registrados.
- [x] Git, `main`, `origin` e arquivos existentes preservados.
- [x] Nenhuma aplicação fictícia ou serviço comercial ativado.

## M0.5 — Equipe

- [x] Seis responsabilidades especializadas documentadas.
- [x] Orquestrador definido como sessão principal.
- [x] Limite de três subagentes simultâneos respeitado.
- [x] Delegação testada em Produtos, Design/UX e Marketing.
- [x] Instruções de escopo, caminhos, critérios e bloqueios reconhecidas pelos testes.
- [x] Ausência do CLI `codex` registrada; nenhum TOML incompatível criado.
- [x] Commits M0 sincronizados com `origin/main`.

## M1 — Primeiras frentes

- [x] Matriz de homologação e contrato mínimo do catálogo criados.
- [x] Dez candidatos registrados como `candidate`/pendentes, sem dados comerciais inventados.
- [x] Fonte JSON estruturada validada com exatamente dez registros `candidate` e valores comerciais nulos.
- [x] Verificador local executado com sucesso para catálogo, tema JSON e padrões de credenciais.
- [x] Verificação local ampliada para os blocos `{% schema %}` do Liquid.
- [x] Registro de cotação contém uma ficha `pending_validation` para cada candidato e estado global `not_sent`.
- [x] Direção visual desktop/mobile e regra de prévia fotográfica documentadas.
- [x] Posicionamento, calendário de 14 dias, seis roteiros e rastreamento orgânico preparados.
- [ ] Homologar fornecedor e SKU com evidências datadas.
- [ ] Calcular margens, frete e capital de giro para os dez produtos.
- [ ] Produzir capturas reais da prévia visual.
- [ ] Revisar e aprovar materiais antes de qualquer publicação.

## M3/M4/M6 — Preparação técnica

- [x] Regras determinísticas do Combina documentadas com fallback `fallback_pending_validation`.
- [x] Seis testes manuais de recomendação documentados.
- [x] Esqueleto Shopify reversível criado sem checkout, credenciais ou dados comerciais fictícios.
- [x] Homepage demonstrativa contém navegação visual por quatro coleções, identificadas como referência.
- [x] Arquivos JSON do tema validados por parsing local.
- [x] Relatório QA independente criado com achados e bloqueios.
- [x] FAQ inicial do Ranti Assistente criada sem respostas comerciais inventadas.
- [ ] Executar Shopify Theme Check em ambiente disponível.
- [ ] Gerar capturas desktop/mobile de uma superfície visual real.
- [ ] Homologar fornecedor e dados de SKU antes de ativar recomendações.
- [x] Estrutura de políticas institucionais criada como rascunho não publicável.
- [ ] Revisar políticas com dados reais da operação antes do Gate 3.
- [x] Checklist de prontidão por Gates criado com evidências e bloqueios atuais.

## MVP — Critérios futuros

- [ ] Fornecedor nacional evidenciado e operacional.
- [ ] Dez produtos com SKU, custo, preço, estoque, prazo, variantes, dimensões e margem.
- [ ] Quatro coleções, busca, navegação, páginas institucionais e políticas.
- [ ] Responsividade desktop/mobile sem falhas críticas.
- [ ] Carrinho, frete e checkout testados em ambiente adequado.
- [ ] RantiShop Combina retorna recomendações compatíveis com o catálogo.
- [ ] FAQ encaminha dúvidas sem informação confiável ao atendimento humano.
- [ ] Conteúdo orgânico e Telegram supervisionado preparados.
- [ ] Evidências de testes, riscos, orçamento e aprovação final registradas.

## Classificação

`Implementado` requer arquivo ou comportamento verificável; `Demonstrativo` não pode ser tratado como operação real; `Testado` requer evidência; `Bloqueado` requer motivo e próximo passo; `Publicado` exige autorização humana.
