CREATE VIEW SpotifyClone.top_3_artistas AS
SELECT s.singer_name AS artista, COUNT(fl.singer_id) AS seguidores
FROM SpotifyClone.follow_history AS fl
INNER JOIN SpotifyClone.singer AS s ON fl.singer_id = s.singer_id
GROUP BY fl.singer_id
ORDER BY COUNT(fl.singer_id) DESC, s.singer_name
LIMIT 3;
