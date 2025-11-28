-- Auto-generated from joins-postgres.psd1 (map@mtime:2025-11-27T17:17:38Z)
-- engine: postgres
-- view:   sync_errors_failures_recent

-- Recent sync failures (24h)
CREATE OR REPLACE VIEW vw_sync_failures_recent AS
SELECT
  e.id,
  e.source,
  e.event_key,
  e.peer_id,
  e.error,
  e.created_at
FROM sync_errors e
WHERE e.created_at > now() - interval ''24 hours''
ORDER BY e.created_at DESC;
