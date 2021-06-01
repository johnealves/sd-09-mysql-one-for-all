CREATE VIEW historico_reproducao_usuarios AS
SELECT users.usuario_nome AS 'usuario', music.musica_nome As 'nome'
FROM SpotifyClone.usuarios users
INNER JOIN SpotifyClone.historico hist ON users.usuario_id = hist.usuario_id
INNER JOIN SpotifyClone.musicas music  ON hist.musica_id = music.musica_id   
ORDER BY 1 ASC, 2 ASC; 
