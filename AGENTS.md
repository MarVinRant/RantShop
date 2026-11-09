# Repository Guidelines

## Project Structure & Module Organization

RantiShop is a Shopify-based MVP for home, kitchen, organization, and décor products. Use this structure as implementation begins:

- `docs/` — plan, status, decisions, budget, visual references, and acceptance evidence.
- `catalog/` — the source of truth for product, supplier, pricing, margin, availability, and recommendation attributes.
- `shopify-theme/` — Shopify theme files, sections, snippets, templates, assets, and responsive styles.
- `design/` — brand guidelines, references, banners, and visual assets.
- `automation/` — recommendation rules, FAQ content, and supervised offer workflows.
- `marketing/` — calendars, scripts, copy, campaign links, and launch materials.
- `tests/` — catalog, recommendation, browser, and operational checks.

Keep temporary demonstrations clearly labeled and separate from approved commercial assets.

## Build, Test, and Development Commands

No build or test tooling is configured yet. Document new scripts here and in the relevant README. Planned examples:

- `shopify theme dev` — run the theme locally against a development store.
- `shopify theme check` — validate Shopify theme conventions.
- `npm test` — run automated tests once a test runner is introduced.

Do not activate paid services, real checkout, or commercial publication from local development.

## Coding Style & Naming Conventions

Use two spaces for JSON, YAML, Liquid, CSS, and JavaScript unless a formatter establishes another rule. Prefer semantic, accessible HTML and reusable Liquid sections. Use `PascalCase` for component-like sections, `kebab-case` for file names, and lower-case catalog keys. Keep product data centralized; do not duplicate prices or availability.

## Testing Guidelines

Catalog and recommendation changes must validate required fields, prices, availability, and compatible environments or palettes. Name tests after behavior, such as `recommendations-by-palette`. Before launch, verify desktop/mobile navigation, product pages, cart, shipping, policies, and the questionnaire.

## Commit & Pull Request Guidelines

There is no commit history yet. Use concise imperative messages with a scope, such as `catalog: add validated kitchen products`. Pull requests should describe the result, list validation, identify blockers, and include screenshots for visual changes. Never commit credentials, personal data, unverified claims, or secrets.

## Security, Commercial, and Approval Rules

Keep the R$200 initial limit visible in project records. Treat supplier, price, stock, freight, and margin data as unverified until evidenced. Human approval is required before spending, enabling real orders, publishing campaigns, or launching the store.
