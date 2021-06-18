CREATE VIEW historico_reproducao_usuarios AS
SELECT u.nome_usuario AS 'usuario', titulo_cancao AS 'nome'
FROM SpotifyClone.Usuarios AS u
INNER JOIN SpotifyClone.Historico_Reproducoes hp ON u.usuario_id = hp.usuario_id
INNER JOIN SpotifyClone.Cancoes c ON c.cancao_id = hp.cancao_id
ORDER BY `usuario` ASC, `nome`;
