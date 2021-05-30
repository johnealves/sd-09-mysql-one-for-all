CREATE VIEW `historico_reproducao_usuarios` AS
SELECT `user`.usuario AS `usuario`,
can.cancao AS `nome`
FROM spotifyclone.usuarios AS `user`
INNER JOIN spotifyclone.historico_reproducao AS his ON `user`.usuario_id = his.usuario_id
INNER JOIN spotifyclone.cancoes AS can ON can.cancao_id = his.cancao_id
ORDER BY `user`.usuario ASC, can.cancao ASC;
