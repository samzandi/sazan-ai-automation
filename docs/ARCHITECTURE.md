# Architecture

## Request path

```text
Trigger / User
      |
      v
     n8n
      |
      +---- LLM provider
      +---- MCP / API tools
      +---- PostgreSQL (persistent state)
      +---- Qdrant (RAG/vector retrieval)
```

## Memory model

Short-term conversational context belongs in the workflow/agent layer. Durable structured state belongs in PostgreSQL. Retrieval knowledge belongs in Qdrant. These stores must not be treated as interchangeable.

## Integration model

External systems are connected incrementally through scoped credentials. Sensitive or irreversible actions must include an approval boundary rather than giving the agent unrestricted write access.

## Deployment boundary

Only n8n binds to localhost on the host. PostgreSQL and Qdrant stay on the private Docker network. Public traffic must terminate at an HTTPS reverse proxy before reaching n8n.

## Future modules

- Email triage and contract workflows
- Document ingestion and RAG
- Business tariff workflows where an authorized API/integration exists
- GitHub/project automation
- Server operations through tightly scoped interfaces
- Optional local inference via Ollama when hardware and workload justify it
