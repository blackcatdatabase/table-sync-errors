-- Auto-generated from joins-mysql.yaml (map@sha1:DA70105A5B799F72A56FEAB71A5171F946A770D2)
-- engine: mysql
-- view:   sync_failures_recent

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
