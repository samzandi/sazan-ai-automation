# Agent Operating Rules

1. Continue autonomously through solvable implementation, test, debug, verification, and documentation steps.
2. Stop only for missing credentials/access, owner-only decisions, or sensitive actions requiring explicit approval.
3. Never store secrets in the repository, logs, documentation, issues, or memory systems.
4. Treat `docs/SECURITY.md` as a mandatory baseline.
5. Verify work with evidence. No evidence = not done.
6. Do not claim production readiness until the production gate is satisfied on the target environment.
7. Keep architecture provider-neutral where practical.
8. Record important decisions, test results, unresolved problems, current status, and next executable step.
9. Prefer small reversible changes and explicit rollback paths.
10. External side effects must be scoped and auditable.
