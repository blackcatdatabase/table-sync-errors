# sync_errors

Errors raised while applying replication batches.

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| id | BIGINT | NO |  | Surrogate primary key. |
| source | VARCHAR(100) | NO |  | Source subsystem/channel. |
| event_key | CHAR(36) | YES |  | Offending event key (if known). |
| peer_id | BIGINT | YES |  | Peer involved (FK peer_nodes.id). |
| error | TEXT | NO |  | Error message. |
| created_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Timestamp when the error was recorded. |

## Engine Details

### mysql

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_sync_errors_created | created_at | INDEX idx_sync_errors_created (created_at) |
| idx_sync_errors_peer | peer_id | INDEX idx_sync_errors_peer    (peer_id) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_sync_err_peer | peer_id | peer_nodes(id) | ON DELETE SET |

### postgres

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_sync_errors_created | created_at | CREATE INDEX IF NOT EXISTS idx_sync_errors_created ON sync_errors (created_at) |
| idx_sync_errors_peer | peer_id | CREATE INDEX IF NOT EXISTS idx_sync_errors_peer ON sync_errors (peer_id) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_sync_err_peer | peer_id | peer_nodes(id) | ON DELETE SET |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_sync_errors | mysql | algorithm=MERGE, security=INVOKER | [../schema/040_views.mysql.sql](../schema/040_views.mysql.sql) |
| vw_sync_failures_recent | mysql | algorithm=TEMPTABLE, security=INVOKER | [../schema/040_views_joins.mysql.sql](../schema/040_views_joins.mysql.sql) |
| vw_sync_errors | postgres |  | [../schema/040_views.postgres.sql](../schema/040_views.postgres.sql) |
| vw_sync_failures_recent | postgres |  | [../schema/040_views_joins.postgres.sql](../schema/040_views_joins.postgres.sql) |
