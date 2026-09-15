# IONOS VPS Deployment

## Prerequisites

- Linux VPS with Docker Engine and Docker Compose plugin
- DNS record for the automation hostname
- HTTPS reverse proxy (existing platform proxy or a dedicated reverse proxy)
- SSH/admin access

## Deploy

```bash
git clone https://github.com/samzandi/sazan-ai-automation.git
cd sazan-ai-automation
cp .env.example .env
chmod 600 .env
# Edit .env and replace every CHANGE_ME / example hostname.
docker compose config
docker compose pull
docker compose up -d
docker compose ps
```

## Local health check

```bash
curl -fsS http://127.0.0.1:5678/healthz
```

## Upgrade

```bash
git pull --ff-only
docker compose pull
docker compose up -d
docker image prune -f
```

Always back up persistent data and review release notes before a production upgrade.

## Reverse proxy

Route the public HTTPS hostname to `127.0.0.1:5678`. Preserve the original host/protocol headers and WebSocket support. Do not publish the database/vector ports.

## Verification evidence required

- `docker compose config` succeeds
- all containers remain running/healthy
- n8n health endpoint succeeds locally
- HTTPS endpoint succeeds externally
- login works
- test workflow executes
- PostgreSQL persistence survives restart
- Qdrant persistence survives restart
- backup and restore procedure is tested

Until those checks are performed on the target VPS, deployment remains unverified.
