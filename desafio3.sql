USE SpotifyClone;

CREATE VIEW historico_reproducao_usuarios AS SELECT u.usuario AS 'usuario', c.cancao AS 'nome' FROM SpotifyClone.historico_de_reproducoes AS hr INNER JOIN SpotifyClone.cancoes AS c ON c.cancao_id = hr.cancao_id INNER JOIN SpotifyClone.usuarios AS u ON u.usuario_id = hr.usuario_id ORDER BY `usuario` ASC, `nome` ASC;