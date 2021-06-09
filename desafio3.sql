CREATE VIEW historico_reproducao_usuarios AS
SELECT
u.usuario_nome AS 'usuario',
c.cancao_titulo AS 'nome'
FROM SpotifyClone.historico_de_reproducoes AS hist 
JOIN SpotifyClone.usuarios AS u ON u.usuario_id = hist.usuario_id
JOIN SpotifyClone.cancoes AS c ON c.cancao_id = hist.cancao_id
ORDER BY `usuario`, `nome`;
