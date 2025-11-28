-- Auto-generated from schema-views-postgres.psd1 (map@mtime:2025-11-27T15:36:13Z)
-- engine: postgres
-- table:  sync_errors

-- Contract view for [sync_errors]
CREATE OR REPLACE VIEW vw_sync_errors AS
SELECT
  id,
  source,
  event_key,
  peer_id,
  error,
  created_at
FROM sync_errors;
