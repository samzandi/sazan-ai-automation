# Security Baseline

- Never commit `.env`, API keys, OAuth secrets, private keys, passwords, tokens, or exported n8n credentials.
- Expose n8n only through HTTPS; the Compose file binds port 5678 to localhost.
- Do not expose PostgreSQL or Qdrant directly to the internet.
- Use unique, high-entropy values for database and n8n encryption secrets.
- Back up n8n data, PostgreSQL, and Qdrant before upgrades.
- Grant integrations the minimum scopes required.
- Separate read-only automations from write-capable automations.
- Require explicit approval for payments, destructive operations, account/security changes, external publication, or other sensitive actions.
- Keep container images pinned and update deliberately after testing.
- Review workflow execution logs for unexpected tool use and data leakage.

## Production gate

Do not label the deployment production-ready until HTTPS, authentication, backup/restore, health checks, restart behavior, upgrade procedure, and at least one end-to-end workflow have been verified on the target VPS.
