CREATE VIEW top_2_hits_do_momento AS
    SELECT m.music_name AS 'cancao', COUNT(m.music_id) AS 'reproducoes'
    FROM SpotifyClone.music_history AS f
    INNER JOIN SpotifyClone.music AS m ON m.music_id = f.music_id
    GROUP BY f.music_id
    ORDER BY `reproducoes` DESC, `cancao`
    LIMIT 2;
