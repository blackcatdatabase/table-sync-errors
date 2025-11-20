-- Auto-generated from schema-views-postgres.psd1 (map@62c9c93)
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

-- Auto-generated from schema-views-postgres.psd1 (map@62c9c93)
-- engine: postgres
-- table:  sync_errors_failures_recent
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

