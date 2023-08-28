USE viagens;
INSERT INTO usuarios(
	id, nome, email, data_nascimento, endereco)
    VALUES(1, "Pâmela Apolinario", "teste@teste.com", "1992-10-05", "Av. das Rosas, 100 - Bairro Alto Araraquara/SP");
    
INSERT INTO destinos(id, nome, descricao)
	VALUES(1, 'Praia do Rosa', 'Linda Praia');

INSERT INTO reservas(id, id_usuario, id_destino, status, data)
	VALUES(1, 1, 1, 'Pendente', '2023-11-11');
    
-- Inserts --
INSERT INTO viagens.usuarios (id, nome, email, data_nascimento, endereco) VALUES 
(1, 'João Silva', 'joao@example.com', '1990-05-15', 'Rua A, 123, Cidade X, Estado Y'),
(2, 'Maria Santos', 'maria@example.com', '1985-08-22', 'Rua B, 456, Cidade Y, Estado Z'),
(3, 'Pedro Souza', 'pedro@example.com', '1998-02-10', 'Avenida C, 789, Cidade X, Estado Y');

INSERT INTO viagens.destinos (id, nome, descricao) VALUES 
(1, 'Praia das Tartarugas', 'Uma bela praia com areias brancas e mar cristalino'),
(2, 'Cachoeira do Vale Verde', 'Uma cachoeira exuberante cercada por natureza'),
(3, 'Cidade Histórica de Pedra Alta', 'Uma cidade rica em história e arquitetura');

INSERT INTO viagens.reservas (id, id_usuario, id_destino, data, status) VALUES 
(1, 1, 2, '2023-07-10', 'confirmada'),
(2, 2, 1, '2023-08-05', 'pendente'),
(3, 3, 3, '2023-09-20', 'cancelada');