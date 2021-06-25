CREATE VIEW top_2_hits_do_momento AS
SELECT t2.song AS cancao, COUNT(t1.song_id) AS reproducoes
FROM SpotifyClone.history AS t1
INNER JOIN SpotifyClone.songs AS t2 ON t1.song_id = t2.song_id
GROUP BY t2.song ORDER BY 2 DESC , 1 ASC LIMIT 2;
