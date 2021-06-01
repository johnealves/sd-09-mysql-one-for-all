CREATE VIEW top_2_hits_do_momento AS
SELECT S.`song_name` AS `cancao`, COUNT(H.song_id) AS `reproducoes`
FROM SpotifyClone.Songs AS S
INNER JOIN SpotifyClone.History AS H ON H.song_id = S.song_id
GROUP BY S.`song_name`
ORDER BY `reproducoes` DESC, `cancoes` ASC
LIMIT 2;
