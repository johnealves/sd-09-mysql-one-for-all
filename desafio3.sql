CREATE VIEW historico_reproducao_usuarios
AS SELECT u.nome AS 'usuario', c.nome AS 'nome'
FROM historico_cancoes h
INNER JOIN cancoes c ON c.cancao_id = h.cancao_id
INNER JOIN usuarios u ON u.usuario_id = h.usuario_id
ORDER BY u.nome, c.nome;
