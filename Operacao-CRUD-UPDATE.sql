USE viagens;

-- atualiza o id da tabela usuarios, usando como referência o email
UPDATE usuarios SET id = 4 WHERE email = "teste@teste.com";

-- atualiza o id da tabela reservas, usando como referência a data
UPDATE reservas SET id = 4 WHERE data = "2023-07-10";

-- atualiza o id da tabela destinos, usando como referência a data
UPDATE reservas SET id_usuario = 4 WHERE data = "2023-07-10";

-- exclui da tabela destinos a linha Praia do Rosa, usando como referência a coluna nome
DELETE FROM destinos WHERE nome = "Praia do Rosa";

DELETE FROM usuarios WHERE email = "teste@teste.com";

-- Altera o tamanho da coluna endereco, na tabela usuarios
ALTER TABLE usuarios MODIFY COLUMN endereco VARCHAR(150);

-- modifica a tabela usuarios na coluna id, deixando o id como auto incremento e adicionando chave primaria
ALTER TABLE usuarios MODIFY COLUMN id INT AUTO_INCREMENT, ADD PRIMARY KEY (id);

-- modifica a tabela destinos na coluna id, deixando o id como auto incremento e adicionando chave primaria
ALTER TABLE destinos MODIFY COLUMN id INT AUTO_INCREMENT, ADD PRIMARY KEY (id);

-- cria chave estrangeira na tabela reservas,referenciando a tabela usuarios
ALTER TABLE reservas ADD CONSTRAINT fk_reservas_usuarios FOREIGN KEY(id_usuario) REFERENCES usuarios(id);

-- cria chave estrangeira na tabela reservas,referenciando a tabela destinos
ALTER TABLE reservas ADD CONSTRAINT fk_reservas_destinos FOREIGN KEY(id_destino) REFERENCES destinos(id);

-- altera a tabela usuarios adicionando as colunas: rua, numero, cidade e estado
ALTER TABLE usuarios
ADD rua VARCHAR(100),
ADD numero VARCHAR(10),
ADD cidade VARCHAR(50),
ADD estado VARCHAR(20);

UPDATE usuarios
SET rua = "Av. das Rosas" WHERE id = 4;

UPDATE usuarios SET numero = 100, cidade = "Araraquara", estado = "São Paulo" WHERE id = 4;

UPDATE usuarios SET rua = "Rua A", numero =  "123", cidade = "Cidade X", estado = "Estado Y" WHERE id = 1;
UPDATE usuarios SET rua = "Rua B", numero =  "456", cidade = "Cidade Y", estado = "Estado Z" WHERE id = 2;
UPDATE usuarios SET rua = "Avenida C", numero =  "789", cidade = "Cidade X", estado = "Estado Y" WHERE id = 3;


UPDATE usuarios
SET rua = SUBSTRING_INDEX(SUBSTRING_INDEX(endereco, ',', 1), ',', -1),
	numero = SUBSTRING_INDEX(SUBSTRING_INDEX(endereco, ',', 2), ',', -1),
	cidade = SUBSTRING_INDEX(SUBSTRING_INDEX(endereco, ',', 3), ',', -1),
    estado = SUBSTRING_INDEX(endereco, ',', -1);
    
-- removendo a coluna endereco da tabela usuarios
ALTER TABLE usuarios DROP COLUMN endereco;