CREATE VIEW historico_reproducao_usuarios AS
SELECT
u.nome_usuario AS `usuario`,
m.nome_musica AS `nome`
FROM
SpotifyClone.usuario AS u
INNER JOIN SpotifyClone.historico_de_reproducao AS sr ON u.usuario_id = sr.usuario_id
INNER JOIN SpotifyClone.musicas AS m ON m.musica_id = sr.musica_id
ORDER BY `usuario` ASC, `nome` ASC;
