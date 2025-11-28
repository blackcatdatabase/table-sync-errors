-- Auto-generated from schema-views-mysql.psd1 (map@mtime:2025-11-27T15:35:35Z)
-- engine: mysql
-- table:  sync_errors

-- Contract view for [sync_errors]
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_sync_errors AS
SELECT
  id,
  source,
  event_key,
  peer_id,
  error,
  created_at
FROM sync_errors;
