<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->
# Definition – sync_errors

Errors raised while applying replication batches.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT | — | AS | Surrogate primary key. |  |
| source | VARCHAR(100) | NO | — | Source subsystem/channel. |  |
| event_key | CHAR(36) | YES | — | Offending event key (if known). |  |
| peer_id | BIGINT | YES | — | Peer involved (FK peer_nodes.id). |  |
| error | TEXT | NO | — | Error message. |  |
| created_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Timestamp when the error was recorded. |  |