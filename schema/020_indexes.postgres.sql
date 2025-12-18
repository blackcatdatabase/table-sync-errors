-- Auto-generated from schema-map-postgres.yaml (map@sha1:621FDD3D99B768B6A8AD92061FB029414184F4B3)
-- engine: postgres
-- table:  sync_errors

CREATE INDEX IF NOT EXISTS idx_sync_errors_peer ON sync_errors (peer_id);

CREATE INDEX IF NOT EXISTS idx_sync_errors_created ON sync_errors (created_at);
