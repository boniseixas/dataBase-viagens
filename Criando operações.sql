USE viagens;

SELECT COUNT(*) AS total_usuarios FROM usuarios us INNER JOIN reservas rs ON us.id = rs.id_usuario;

SELECT MAX(TIMESTAMPDIFF(YEAR, data_nascimento, CURRENT_DATE())) AS maior_idade FROM usuarios;

INSERT INTO reservas(id_usuario, id_destino) VALUES(1, 3);

SELECT COUNT(*), id_destino FROM reservas GROUP BY id_destino;