-- Auto-generated from schema-map-mysql.psd1 (map@62c9c93)
-- engine: mysql
-- table:  sync_errors
ALTER TABLE sync_errors ADD CONSTRAINT fk_sync_err_peer FOREIGN KEY (peer_id) REFERENCES peer_nodes(id) ON DELETE SET NULL;
