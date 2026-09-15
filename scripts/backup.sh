#!/usr/bin/env sh
set -eu

STAMP="$(date +%Y%m%d-%H%M%S)"
OUT="${BACKUP_DIR:-./backups}/$STAMP"
mkdir -p "$OUT"

echo "Backing up PostgreSQL..."
docker compose exec -T postgres pg_dump -U "$POSTGRES_USER" "$POSTGRES_DB" > "$OUT/postgres.sql"

echo "Backing up n8n and Qdrant Docker volumes..."
docker run --rm -v sazan-ai-automation_n8n_data:/data -v "$(pwd)/$OUT:/backup" alpine sh -c 'tar czf /backup/n8n-data.tgz -C /data .'
docker run --rm -v sazan-ai-automation_qdrant_data:/data -v "$(pwd)/$OUT:/backup" alpine sh -c 'tar czf /backup/qdrant-data.tgz -C /data .'

echo "Backup written to $OUT"
