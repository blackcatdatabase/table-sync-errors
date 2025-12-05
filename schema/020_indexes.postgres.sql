-- Auto-generated from schema-map-postgres.yaml (map@sha1:F0EE237771FBA8DD7C4E886FF276F91A862C3718)
-- engine: postgres
-- table:  sync_errors

CREATE INDEX IF NOT EXISTS idx_sync_errors_peer ON sync_errors (peer_id);

CREATE INDEX IF NOT EXISTS idx_sync_errors_created ON sync_errors (created_at);
