-- Auto-generated from schema-views-postgres.yaml (map@sha1:EDC13878AE5F346E7EAD2CF0A484FEB7E68F6CDD)
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
