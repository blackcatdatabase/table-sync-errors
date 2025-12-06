-- Auto-generated from schema-map-mysql.yaml (map@sha1:5E62933580349BE7C623D119AC9D1301A62F03EF)
-- engine: mysql
-- table:  sync_errors

ALTER TABLE sync_errors ADD CONSTRAINT fk_sync_err_peer FOREIGN KEY (peer_id) REFERENCES peer_nodes(id) ON DELETE SET NULL;
