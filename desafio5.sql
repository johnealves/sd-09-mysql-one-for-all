CREATE VIEW top_2_hits_do_momento AS
SELECT S.song AS "cancao", COUNT(*) AS "reproducoes" FROM SpotifyClone.users_songs AS US INNER JOIN songs AS S ON S.id = US.song_id
GROUP BY S.song
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
