-- Auto-generated from feature-modules-postgres.yaml (map@85230ed)
-- engine: postgres
-- table:  sync_errors_by_peer

-- Recent sync errors grouped by peer/source
CREATE OR REPLACE VIEW vw_sync_errors_by_peer AS
SELECT
  peer_id,
  source,
  COUNT(*) AS errors_total,
  MAX(created_at) AS last_error_at
FROM sync_errors
WHERE created_at > now() - interval $$7 days$$
GROUP BY peer_id, source
ORDER BY errors_total DESC, last_error_at DESC;
