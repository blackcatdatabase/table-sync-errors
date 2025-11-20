-- Auto-generated from schema-map-postgres.psd1 (map@9d3471b)
-- engine: postgres
-- table:  sync_errors
CREATE INDEX IF NOT EXISTS idx_sync_errors_peer ON sync_errors (peer_id);

CREATE INDEX IF NOT EXISTS idx_sync_errors_created ON sync_errors (created_at);
