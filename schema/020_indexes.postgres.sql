-- Auto-generated from schema-map-postgres.psd1 (map@mtime:2025-11-21T00:25:46Z)
-- engine: postgres
-- table:  sync_errors

CREATE INDEX IF NOT EXISTS idx_sync_errors_peer ON sync_errors (peer_id);

CREATE INDEX IF NOT EXISTS idx_sync_errors_created ON sync_errors (created_at);
