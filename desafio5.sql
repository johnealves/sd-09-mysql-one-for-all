CREATE VIEW top_2_hits_do_momento AS
SELECT music.musica_nome AS 'cancao', COUNT(hist.musica_id) AS 'reproducoes'
FROM SpotifyClone.musicas music 
INNER JOIN SpotifyClone.historico hist ON music.musica_id = hist.musica_id
GROUP BY music.musica_nome
ORDER BY 2 DESC, 1 ASC
LIMIT 2;
