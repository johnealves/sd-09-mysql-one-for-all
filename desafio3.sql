 CREATE VIEW historico_reproducao_usuarios AS
 SELECT us.user_name AS 'usuario',
 song.song_title AS 'nome'
 FROM
 spotifyclone.history AS hist
 INNER JOIN
 spotifyclone.user AS us ON hist.user_id = us.user_id
 INNER JOIN
 spotifyclone.songs AS song ON hist.song_id = song.song_id
 ORDER BY 1 ASC, 2 ASC;
