CREATE VIEW top_2_hits_do_momento AS
SELECT sg.song_name AS cancao, COUNT(hist.song_id) AS reproducoes
FROM SpotifyClone.history AS hist
INNER JOIN SpotifyClone.song AS sg ON hist.song_id = sg.song_id
GROUP BY sg.song_name ORDER BY 2 DESC , 1 ASC LIMIT 2;
