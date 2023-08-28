USE viagens;

SELECT * FROM usuarios us
	INNER JOIN reservas rs ON us.id = rs.id_usuario
    INNER JOIN destinos ds ON rs.id_destino = ds.id;
    
SELECT * FROM usuarios us LEFT JOIN reservas rs ON us.id = rs.id_usuario;

INSERT INTO destinos(nome, descricao) VALUES("Destino sem reservas", "Reserve mais tarde");

SELECT * FROM reservas rs RIGHT JOIN destinos ds ON rs.id_destino = ds.id;