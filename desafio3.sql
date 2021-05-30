CREATE VIEW `historico_reproducao_usuarios` AS
SELECT `user`.usuario AS `usuario`,
can.cancao AS `nome`
FROM SpotifyClone.usuarios AS `user`
INNER JOIN SpotifyClone.historico_reproducao AS his ON `user`.usuario_id = his.usuario_id
INNER JOIN SpotifyClone.cancoes AS can ON can.cancao_id = his.cancao_id
ORDER BY `user`.usuario ASC, can.cancao ASC;
