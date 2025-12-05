-- Auto-generated from feature-modules-mysql.yaml (map@sha1:F2224DD310A34E10A80882FE9641E685E98B51E8)
-- engine: mysql
-- table:  sync_errors_by_peer

-- Recent sync errors grouped by peer/source
CREATE OR REPLACE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW vw_sync_errors_by_peer AS
SELECT
  peer_id,
  source,
  COUNT(*) AS errors_total,
  MAX(created_at) AS last_error_at
FROM sync_errors
WHERE created_at > NOW() - INTERVAL 7 DAY
GROUP BY peer_id, source
ORDER BY errors_total DESC, last_error_at DESC;
