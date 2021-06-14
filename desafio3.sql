 CREATE VIEW historico_reproducao_usuarios AS
 SELECT us.usuario_nome AS 'usuario',
 song.musica_titulo AS 'nome'
 FROM
 spotifyclone.historico AS hist
 INNER JOIN
 spotifyclone.usuario AS us ON hist.usuario_id = us.usuario_id
 INNER JOIN
 spotifyclone.musicas AS song ON hist.musica_id = song.musica_id
 ORDER BY 1 ASC, 2 ASC;
