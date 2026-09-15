# Roadmap

## Phase 0 — Repository foundation
- [x] Architecture documented
- [x] Core Compose stack
- [x] Environment template
- [x] Security baseline
- [x] VPS deployment runbook
- [x] Backup script
- [x] Autonomous agent rules

## Phase 1 — Target VPS
- [ ] Confirm Docker/Compose on IONOS VPS
- [ ] Configure DNS/HTTPS hostname
- [ ] Create runtime secrets locally on VPS
- [ ] Deploy stack
- [ ] Verify health and persistence
- [ ] Test backup/restore

## Phase 2 — Agent foundation
- [ ] Configure selected LLM credentials in n8n
- [ ] Build minimal agent workflow
- [ ] Add durable conversation/session design
- [ ] Add approval gates for write actions

## Phase 3 — Knowledge/RAG
- [ ] Define document ingestion policy
- [ ] Configure embeddings
- [ ] Create Qdrant collections
- [ ] Add retrieval workflow
- [ ] Evaluate retrieval quality with a test set

## Phase 4 — Business automations
- [ ] Email triage workflow
- [ ] Contract/document workflow
- [ ] Project/GitHub workflow
- [ ] Authorized tariff/API workflow where available

## Phase 5 — Operations
- [ ] Monitoring and alerting
- [ ] Scheduled encrypted/off-host backups
- [ ] Restore drill
- [ ] Upgrade/rollback drill
- [ ] Security review
- [ ] Production-readiness evidence report
