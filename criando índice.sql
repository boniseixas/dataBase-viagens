USE viagens;

SELECT * FROM usuarios;

EXPLAIN SELECT * FROM usuarios WHERE nome = "Camila Alves";

-- criando índice na coluna nome, tabela usuarios --
CREATE INDEX idx_nome ON usuarios(nome);