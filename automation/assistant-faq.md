# Ranti Assistente — FAQ do MVP

**Estado:** rascunho operacional; não conectado a chat, WhatsApp ou atendimento automático.

## Regras de resposta

1. Responder somente com informações presentes em páginas institucionais aprovadas ou em produtos com estado `validated`.
2. Nunca inventar preço, estoque, prazo, frete, desconto, fornecedor ou status de pedido.
3. Se a pergunta depender de dado ausente, responder que a informação está em validação e encaminhar ao atendimento humano.
4. Não solicitar credenciais, dados de cartão ou documentos pelo assistente.
5. Não enviar mensagens promocionais nem iniciar contato fora de um canal autorizado.

## Perguntas frequentes

### O que é a RantiShop?

A RantiShop é uma loja em preparação, focada em casa, cozinha, organização e decoração, com curadoria por ambiente, estilo e paleta de cores.

### Como funciona o RantiShop Combina?

No MVP, a pessoa informa ambiente, paleta e estilo. A experiência apresenta combinações baseadas nos atributos do catálogo. Recomendações só podem ser tratadas como compráveis quando os produtos estiverem homologados.

### Vocês têm estoque próprio?

A operação planejada usa dropshipping nacional, sem estoque próprio. Fornecedor, estoque, prazo e condições de cada produto precisam ser confirmados antes de qualquer oferta.

### Qual é o prazo de entrega?

O prazo depende do produto, origem, destino e transportadora. Sem uma consulta atual para o SKU e CEP, encaminhar ao atendimento humano.

### Posso trocar ou devolver?

As condições devem seguir a política publicada e a situação do pedido. Quando a política ou o produto ainda não estiverem aprovados, encaminhar ao atendimento humano.

### Como falar com o atendimento?

Usar somente o canal oficial informado pela loja. Não inventar telefone, e-mail, WhatsApp ou horário de atendimento.

## Respostas de encaminhamento

- `catalog_pending_validation`: “Ainda estamos validando os dados deste produto. Vou encaminhar sua dúvida para o atendimento.”
- `shipping_pending_validation`: “O prazo depende do destino e do estoque atual. O atendimento pode confirmar essa informação.”
- `policy_pending_review`: “A equipe precisa confirmar a política aplicável antes de responder com segurança.”

## Critérios de aceite

- [x] Não contém preço, estoque, prazo ou fornecedor inventado.
- [x] Encaminha perguntas dependentes de dados não disponíveis.
- [x] Não exige integração paga ou canal externo.
- [ ] Revisar com políticas finais e catálogo homologado.
- [ ] Testar respostas em uma interface do MVP.
