-- Auto-generated from schema-map-postgres.yaml (map@sha1:FAEA49A5D5F8FAAD9F850D0F430ED451C5C1D707)
-- engine: postgres
-- table:  sync_errors

CREATE INDEX IF NOT EXISTS idx_sync_errors_peer ON sync_errors (peer_id);

CREATE INDEX IF NOT EXISTS idx_sync_errors_created ON sync_errors (created_at);
