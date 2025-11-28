-- Auto-generated from joins-mysql.psd1 (map@mtime:2025-11-27T17:49:37Z)
-- engine: mysql
-- view:   sync_errors_failures_recent
-- Recent sync failures (24h)
CREATE OR REPLACE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW vw_sync_failures_recent AS
SELECT
  e.id,
  e.source,
  e.event_key,
  e.peer_id,
  e.error,
  e.created_at
FROM sync_errors e
WHERE e.created_at > NOW() - INTERVAL 24 HOUR
ORDER BY e.created_at DESC;
