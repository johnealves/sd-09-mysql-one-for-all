CREATE VIEW top_2_hits_do_momento AS

SELECT 
songs.name AS 'cancao',
COUNT(*) AS 'reproducoes'
FROM
SpotifyClone.songs AS songs
INNER JOIN
SpotifyClone.playback_history AS history ON history.song_id = songs.song_id
GROUP BY songs.name
ORDER BY 2 DESC, 1
LIMIT 2
;
