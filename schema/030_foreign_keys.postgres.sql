-- Auto-generated from schema-map-postgres.psd1 (map@mtime:2025-11-21T00:25:46Z)
-- engine: postgres
-- table:  sync_errors

ALTER TABLE sync_errors ADD CONSTRAINT fk_sync_err_peer FOREIGN KEY (peer_id) REFERENCES peer_nodes(id) ON DELETE SET NULL;
