-- Auto-generated from schema-map-mysql.psd1 (map@mtime:2025-11-27T15:13:14Z)
-- engine: mysql
-- table:  sync_errors

ALTER TABLE sync_errors ADD CONSTRAINT fk_sync_err_peer FOREIGN KEY (peer_id) REFERENCES peer_nodes(id) ON DELETE SET NULL;
