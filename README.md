# Sazan AI Automation

Self-hosted AI agent and automation infrastructure powered by n8n, MCP, PostgreSQL, Qdrant and LLMs — built for secure, extensible and autonomous workflows.

## Architecture

- **n8n** — workflow orchestration and agent execution
- **PostgreSQL** — persistent application/workflow data
- **Qdrant** — vector storage for RAG and knowledge retrieval
- **LLM providers** — provider-neutral AI model layer
- **MCP / APIs** — controlled tool and service integrations
- **Docker Compose** — reproducible self-hosted deployment

## Principles

1. Security by default: no credentials committed to Git.
2. Self-hosted first, with external AI providers optional.
3. Provider-neutral architecture.
4. Persistent data and backups are explicit.
5. Human approval gates for sensitive actions.
6. Observability and health checks before production claims.
7. No evidence = not done.

## Quick start

1. Copy `.env.example` to `.env`.
2. Generate strong secrets for all placeholder values.
3. Set `N8N_HOST` and `WEBHOOK_URL` for your deployment.
4. Start the stack with Docker Compose.
5. Put n8n behind HTTPS before exposing it publicly.

See `docs/DEPLOYMENT.md`, `docs/SECURITY.md`, and `docs/ARCHITECTURE.md` before production use.

## Status

Repository foundation is implemented. Deployment to the target VPS and live integration tests require server access and runtime credentials and are therefore not yet claimed as complete.
