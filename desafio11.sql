CREATE VIEW cancoes_premium AS
    SELECT m.music_name AS 'nome', COUNT(*) AS 'reproducoes'
    FROM SpotifyClone.music_history AS h
    INNER JOIN SpotifyClone.music AS m ON m.music_id = h.music_id
    INNER JOIN SpotifyClone.`user` AS u ON u.user_id = h.user_id
    WHERE u.plan_id IN (2,3)
    GROUP BY m.music_name
    ORDER BY `nome`;
